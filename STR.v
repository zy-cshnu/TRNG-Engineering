`timescale 1ns / 1ps

module STR(STR_en, STR_out,clk,clk1
    );
	 
	 input [0:0]STR_en;
    input clk;
    input clk1;
	 output [0:0]STR_out;
	 (*keep = "TRUE"*)wire [11:0]STR;

 // 12-stage STR1
	     LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR0 (
      .O(STR[0]),   // LUT general output
      .I0(STR[0]), // LUT input
      .I1(STR[1]), // LUT input
      .I2(STR[11]), // LUT input
      .I3(STR_en)  // LUT input
   );
	 	    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1 (
      .O(STR[1]),   // LUT general output
      .I0(STR[1]), // LUT input
      .I1(STR[2]), // LUT input
      .I2(STR[0]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR2 (
      .O(STR[2]),   // LUT general output
      .I0(STR[2]), // LUT input
      .I1(STR[3]), // LUT input
      .I2(STR[1]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR3 (
      .O(STR[3]),   // LUT general output
      .I0(STR[3]), // LUT input
      .I1(STR[4]), // LUT input
      .I2(STR[2]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR4 (
      .O(STR[4]),   // LUT general output
      .I0(STR[4]), // LUT input
      .I1(STR[5]), // LUT input
      .I2(STR[3]), // LUT input
      .I3(STR_en)  // LUT input
   );	
		    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR5 (
      .O(STR[5]),   // LUT general output
      .I0(STR[5]), // LUT input
      .I1(STR[6]), // LUT input
      .I2(STR[4]), // LUT input
      .I3(STR_en)  // LUT input
   );
        	LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR6 (
      .O(STR[6]),   // LUT general output
      .I0(STR[6]), // LUT input
      .I1(STR[7]), // LUT input
      .I2(STR[5]), // LUT input
      .I3(STR_en)  // LUT input
   );
		   LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR7 (
      .O(STR[7]),   // LUT general output
      .I0(STR[7]), // LUT input
      .I1(STR[8]), // LUT input
      .I2(STR[6]), // LUT input
      .I3(STR_en)  // LUT input
   );	
		    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR8 (
      .O(STR[8]),   // LUT general output
      .I0(STR[8]), // LUT input
      .I1(STR[9]), // LUT input
      .I2(STR[7]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR9 (
      .O(STR[9]),   // LUT general output
      .I0(STR[9]), // LUT input
      .I1(STR[10]), // LUT input
      .I2(STR[8]), // LUT input
      .I3(STR_en)  // LUT input
   );
			 LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR10 (
      .O(STR[10]),   // LUT general output
      .I0(STR[10]), // LUT input
      .I1(STR[11]), // LUT input
      .I2(STR[9]), // LUT input
      .I3(STR_en)  // LUT input
   );
			 LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR11 (
      .O(STR[11]),   // LUT general output
      .I0(STR[11]), // LUT input
      .I1(STR[0]), // LUT input
      .I2(STR[10]), // LUT input
      .I3(STR_en)  // LUT input
   );
	
// 4-stage C-element
(*keep = "TRUE"*)wire [3:0]C;
	
LUT3 #(
      .INIT(8'h11101000)  // Specify LUT Contents
   ) LUT3_C0 (
      .O(C[0]),   // LUT general output
      .I0(C[0]), // LUT input
      .I1(STR[0]), // LUT input
      .I2(STR[3])  // LUT input
   );	
	
LUT3 #(
      .INIT(8'h11101000)  // Specify LUT Contents
   ) LUT3_C1 (
      .O(C[1]),   // LUT general output
      .I0(C[1]), // LUT input
      .I1(STR[3]), // LUT input
      .I2(STR[6])  // LUT input
   );		

LUT3 #(
      .INIT(8'h11101000)  // Specify LUT Contents
   ) LUT3_C2 (
      .O(C[2]),   // LUT general output
      .I0(C[2]), // LUT input
      .I1(STR[6]), // LUT input
      .I2(STR[9])  // LUT input
   );		

LUT3 #(
      .INIT(8'h11101000)  // Specify LUT Contents
   ) LUT3_C3 (
      .O(C[3]),   // LUT general output
      .I0(C[3]), // LUT input
      .I1(STR[9]), // LUT input
      .I2(STR[0])  // LUT input
   );			

wire xor1;

   LUT4 #(
      .INIT(16'h6996)  // Specify LUT Contents
   ) LUT4_xor1 (
      .O(xor1),   // LUT general output
      .I0(C[0]), // LUT input
      .I1(C[1]), // LUT input
      .I2(C[2]), // LUT input
      .I3(C[3])  // LUT input
   );

wire [0:0]Q;
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D_STR
	(
      .Q(Q[0]),      // 1-bit Data output
      .C(clk),      // 1-bit Clock input
      .CE(1'b1),     // 1-bit Clock enable input
      .CLR(1'b0),    // 1-bit Asynchronous clear input
      .D(STR[10])       // 1-bit Data input
   );

wire xor2;
assign xor2=xor1^Q;

// 12-stage STR2
(*keep = "TRUE"*)wire [11:0]STR1;

	      LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1_0 (
      .O(STR1[0]),   // LUT general output
      .I0(STR1[0]), // LUT input
      .I1(STR1[1]), // LUT input
      .I2(STR1[11]), // LUT input
      .I3(STR_en)  // LUT input
   );
	 	    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1_1 (
      .O(STR1[1]),   // LUT general output
      .I0(STR1[1]), // LUT input
      .I1(STR1[2]), // LUT input
      .I2(STR1[0]), // LUT input
      .I3(STR_en)  // LUT input
   );
	      LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR1_2 (
      .O(STR1[2]),   // LUT general output
      .I0(STR1[2]), // LUT input
      .I1(STR1[3]), // LUT input
      .I2(STR1[1]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR1_3 (
      .O(STR1[3]),   // LUT general output
      .I0(STR1[3]), // LUT input
      .I1(STR1[4]), // LUT input
      .I2(STR1[2]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1_4 (
      .O(STR1[4]),   // LUT general output
      .I0(STR1[4]), // LUT input
      .I1(STR1[5]), // LUT input
      .I2(STR1[3]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1_5 (
      .O(STR1[5]),   // LUT general output
      .I0(STR1[5]), // LUT input
      .I1(STR1[6]), // LUT input
      .I2(STR1[4]), // LUT input
      .I3(STR_en)  // LUT input
   );
			    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR1_6 (
      .O(STR1[6]),   // LUT general output
      .I0(STR1[6]), // LUT input
      .I1(STR1[7]), // LUT input
      .I2(STR1[5]), // LUT input
      .I3(STR_en)  // LUT input
   );
			    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR1_7 (
      .O(STR1[7]),   // LUT general output
      .I0(STR1[7]), // LUT input
      .I1(STR1[8]), // LUT input
      .I2(STR1[6]), // LUT input
      .I3(STR_en)  // LUT input
   );	
		    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1_8 (
      .O(STR1[8]),   // LUT general output
      .I0(STR1[8]), // LUT input
      .I1(STR1[9]), // LUT input
      .I2(STR1[7]), // LUT input
      .I3(STR_en)  // LUT input
   );
		    LUT4 #(
      .INIT(16'b1011001000000000)  // Specify LUT Contents
   ) LUT4_STR1_9 (
      .O(STR1[9]),   // LUT general output
      .I0(STR1[9]), // LUT input
      .I1(STR1[10]), // LUT input
      .I2(STR1[8]), // LUT input
      .I3(STR_en)  // LUT input
   );
			    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR1_10 (
      .O(STR1[10]),   // LUT general output
      .I0(STR1[10]), // LUT input
      .I1(STR1[11]), // LUT input
      .I2(STR1[9]), // LUT input
      .I3(STR_en)  // LUT input
   );
			    LUT4 #(
      .INIT(16'b1011001011111111)  // Specify LUT Contents
   ) LUT4_STR1_11 (
      .O(STR1[11]),   // LUT general output
      .I0(STR1[11]), // LUT input
      .I1(STR1[0]), // LUT input
      .I2(STR1[10]), // LUT input
      .I3(STR_en)  // LUT input
   );


// 6-stage DFF
wire [5:0]DFF;	
		
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D0 (
      .Q(DFF[0]),      // 1-bit Data output
      .C(clk1),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(STR1[0])       // 1-bit Data input
   );
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D1 (
      .Q(DFF[1]),      // 1-bit Data output
      .C(clk1),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(STR1[2])       // 1-bit Data input
   );
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D2 (
      .Q(DFF[2]),      // 1-bit Data output
      .C(clk1),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(STR1[4])       // 1-bit Data input
   );
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D3 (
      .Q(DFF[3]),      // 1-bit Data output
      .C(clk1),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(STR1[6])       // 1-bit Data input
   );
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D4 (
      .Q(DFF[4]),      // 1-bit Data output
      .C(clk1),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(STR1[8])       // 1-bit Data input
   );
	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D5 (
      .Q(DFF[5]),      // 1-bit Data output
      .C(clk1),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(STR1[10])       // 1-bit Data input
   );

wire xor3;


   LUT6 #(
      .INIT(64'h6996966996696996)  // Specify LUT Contents
   ) LUT6_xor2 (
      .O(xor3),   // LUT general output
      .I0(DFF[0]), // LUT input
      .I1(DFF[1]), // LUT input
      .I2(DFF[2]), // LUT input
      .I3(DFF[3]), // LUT input
      .I4(DFF[4]), // LUT input
      .I5(DFF[5])  // LUT input
   );


	FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_D_OUT (
      .Q(STR_out),      // 1-bit Data output
      .C(xor2),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .CLR(1'b0),  // 1-bit Asynchronous clear input
      .D(xor3)       // 1-bit Data input
   );
		


endmodule
