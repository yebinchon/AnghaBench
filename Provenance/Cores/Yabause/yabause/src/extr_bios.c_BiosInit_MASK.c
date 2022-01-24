#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int** interruptlist ; 

void FUNC1(void)
{
   int i;

   // Setup vectors
   FUNC0(0x06000600, 0x002B0009); // rte, nop
   FUNC0(0x06000604, 0xE0F0600C); // mov #0xF0, r0; extu.b r0, r0
   FUNC0(0x06000608, 0x400E8BFE); // ldc r0, sr; bf
   FUNC0(0x0600060C, 0x00090009); // nop
   FUNC0(0x06000610, 0x000B0009); // rts, nop

   for (i = 0; i < 0x200; i+=4)
   {
      FUNC0(0x06000000+i, 0x06000600);
      FUNC0(0x06000400+i, 0x06000600);
      interruptlist[0][i >> 2] = 0x06000600;
      interruptlist[1][i >> 2] = 0x06000600;
   }

   FUNC0(0x06000010, 0x06000604);
   FUNC0(0x06000018, 0x06000604);
   FUNC0(0x06000024, 0x06000604);
   FUNC0(0x06000028, 0x06000604);
   interruptlist[0][4] = 0x06000604;
   interruptlist[0][6] = 0x06000604;
   interruptlist[0][9] = 0x06000604;
   interruptlist[0][10] = 0x06000604;

   FUNC0(0x06000410, 0x06000604);
   FUNC0(0x06000418, 0x06000604);
   FUNC0(0x06000424, 0x06000604);
   FUNC0(0x06000428, 0x06000604);
   interruptlist[1][4] = 0x06000604;
   interruptlist[1][6] = 0x06000604;
   interruptlist[1][9] = 0x06000604;
   interruptlist[1][10] = 0x06000604;

   // Scu Interrupts
   for (i = 0; i < 0x38; i+=4)
   {
      FUNC0(0x06000100+i, 0x00000400+i);
      interruptlist[0][0x40+(i >> 2)] = 0x00000400+i;
   }

   for (i = 0; i < 0x40; i+=4)
   {
      FUNC0(0x06000140+i, 0x00000440+i);
      interruptlist[0][0x50+(i >> 2)] = 0x00000440+i;
   }

   for (i = 0; i < 0x100; i+=4)
      FUNC0(0x06000A00+i, 0x06000610);

   // Setup Bios Functions
   FUNC0(0x06000210, 0x00000210);
   FUNC0(0x0600026C, 0x0000026C);
   FUNC0(0x06000274, 0x00000274);
   FUNC0(0x06000280, 0x00000280);
   FUNC0(0x0600029C, 0x0000029C);
   FUNC0(0x060002DC, 0x000002DC);
   FUNC0(0x06000300, 0x00000300);
   FUNC0(0x06000304, 0x00000304);
   FUNC0(0x06000310, 0x00000310);
   FUNC0(0x06000314, 0x00000314);
   FUNC0(0x06000320, 0x00000320);
   FUNC0(0x06000324, 0x00000000);
   FUNC0(0x06000330, 0x00000330);
   FUNC0(0x06000334, 0x00000334);
   FUNC0(0x06000340, 0x00000340);
   FUNC0(0x06000344, 0x00000344);
   FUNC0(0x06000348, 0xFFFFFFFF);
   FUNC0(0x06000354, 0x00000000);
   FUNC0(0x06000358, 0x00000358);
}