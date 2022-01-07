
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int CPU_REMEMBER_JMP_STEPS ;
 int CPU_REMEMBER_PC_STEPS ;
 int printf (char*,...) ;
 int safe_gets (char*,int,char*) ;

__attribute__((used)) static void show_help(void)
{
 printf(
  "CONT                           - Continue emulation\n"
  "SHOW                           - Show registers\n"
  "STACK                          - Show stack\n"
  "SET{PC,A,X,Y,S} hexval         - Set register value\n"
  "SET{N,V,D,I,Z,C} 0 or 1        - Set flag value\n"
  "C startaddr hexval...          - Change memory\n"
  "D [startaddr]                  - Disassemble memory\n"
  "F startaddr endaddr hexval     - Fill memory\n"
  "M [startaddr]                  - Memory list\n"
  "S startaddr endaddr hexval...  - Search memory\n");


 printf(
  "LOOP [inneraddr]               - Disassemble a loop that contains inneraddr\n"
  "RAM startaddr endaddr          - Convert memory block into RAM\n"
  "ROM startaddr endaddr          - Convert memory block into ROM\n"
  "HARDWARE startaddr endaddr     - Convert memory block into HARDWARE\n"
  "READ filename startaddr nbytes - Read file into memory\n"
  "WRITE startaddr endaddr [file] - Write memory block to a file (memdump.dat)\n"
  "SUM startaddr endaddr          - Print sum of specified memory range\n");
 printf(
  "BLINE [1000+ypos]              - Blink scanline (8<=ypos<=247)\n");

 printf(






  "ANTIC, GTIA, PIA, POKEY        - Display hardware registers\n"
  "DLIST [startaddr]              - Show Display List\n");
 printf(






  "TSS [value]                    - Start trainer search\n"
  "TSC [value]                    - Perform when trainer value has changed\n"
  "TSN [value]                    - Perform when trainer value has NOT changed\n"
  "                                 Without [value], perform a deep trainer search\n"
  "TSP [count]                    - Print [count] possible trainer addresses\n");
 printf(
  "COLDSTART, WARMSTART           - Perform system coldstart/warmstart\n"



  "QUIT or EXIT                   - Quit emulator\n"
  "HELP or ?                      - This text\n");
}
