#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int BGON; int PNCN2; int CHCTLB; int PLSZ; int MPABN2; int MPCDN2; int MPOFN; int SCXN2; int SCYN2; int CRAOFA; int SFPRMD; int PRINB; int CCRNB; int SFCCMD; int /*<<< orphan*/  WCTLB; } ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*,int,int,int,int) ; 
 char* FUNC2 (char*,int) ; 
 char* FUNC3 (char*,int,int,int,int,int,int*) ; 
 char* FUNC4 (char*,int) ; 
 char* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int*) ; 
 TYPE_1__* Vdp2Regs ; 

void FUNC9(char *outstring, int *isenabled)
{
   u8 map[4];

   if (Vdp2Regs->BGON & 0x4)
   {
      int patterndatasize;
      u16 supplementdata=Vdp2Regs->PNCN2 & 0x3FF;
      int planew=0, planeh=0;
      int patternwh=(Vdp2Regs->CHCTLB & 0x1) + 1;

      // enabled
      *isenabled = 1;

      // Mosaic
      outstring = FUNC4(outstring, 0x4);

      // BPP
      outstring = FUNC0(outstring, (Vdp2Regs->CHCTLB & 0x2) >> 1);

      if(Vdp2Regs->PNCN2 & 0x8000)
         patterndatasize = 1;
      else
         patterndatasize = 2;

      FUNC6(outstring, "Tile(%dH x %dV)\r\n", patternwh, patternwh);

      FUNC8((Vdp2Regs->PLSZ & 0x30) >> 4, &planew, &planeh);
      FUNC6(outstring, "Plane Size = %dH x %dV\r\n", planew, planeh);

      // Pattern Name Control stuff
      if (patterndatasize == 2)
      {
         FUNC6(outstring, "Pattern Name data size = 2 words\r\n");
      }
      else
      {
         FUNC6(outstring, "Pattern Name data size = 1 word\r\n");
         FUNC6(outstring, "Character Number Supplement bit = %d\r\n", (supplementdata >> 14) & 0x1);
         FUNC6(outstring, "Special Priority bit = %d\r\n", (supplementdata >> 9) & 0x1);
         FUNC6(outstring, "Special Color Calculation bit = %d\r\n", (supplementdata >> 8) & 0x1);
         FUNC6(outstring, "Supplementary Palette number = %d\r\n", (supplementdata >> 5) & 0x7);
         FUNC6(outstring, "Supplementary Color number = %d\r\n", supplementdata & 0x1f);
      }

      map[0] = Vdp2Regs->MPABN2 & 0xFF;
      map[1] = Vdp2Regs->MPABN2 >> 8;
      map[2] = Vdp2Regs->MPCDN2 & 0xFF;
      map[3] = Vdp2Regs->MPCDN2 >> 8;
      outstring = FUNC3(outstring, patternwh, Vdp2Regs->PNCN2, (Vdp2Regs->PLSZ >> 4) & 0x3, (Vdp2Regs->MPOFN & 0x700) >> 2, 4, map);
/*
      // Figure out Cell start address
      switch(patterndatasize)
      {
         case 1:
         {
            tmp = readWord(vram, addr);

            switch(auxMode)
            {
               case 0:
                  switch(patternwh)
                  {
                     case 1:
                        charAddr = (tmp & 0x3FF) | ((supplementdata & 0x1F) << 10);
                        break;
                     case 2:
                        charAddr = ((tmp & 0x3FF) << 2) |  (supplementdata & 0x3) | ((supplementdata & 0x1C) << 10);
                        break;
                  }
                  break;
               case 1:
                  switch(patternwh)
                  {
                     case 1:
                        charAddr = (tmp & 0xFFF) | ((supplementdata & 0x1C) << 10);
                        break;
                     case 4:
                        charAddr = ((tmp & 0xFFF) << 2) |  (supplementdata & 0x3) | ((supplementdata & 0x10) << 10);
                        break;
                  }
                  break;
            }
            break;
         }
         case 2:
         {
            unsigned short tmp1 = readWord(vram, addr);
            unsigned short tmp2 = readWord(vram, addr+2);

            charAddr = tmp2 & 0x7FFF;
            break;
         }
      }
      if (!(readWord(reg, 0x6) & 0x8000)) charAddr &= 0x3FFF;

      charAddr *= 0x20; // selon Runik

      AddString(outstring, "Cell Data Address = %X\r\n", charAddr);
*/
      // Screen scroll values
      FUNC6(outstring, "Screen Scroll x = %d, y = %d\r\n", - ((Vdp2Regs->SCXN2 & 0x7FF) % 512), - ((Vdp2Regs->SCYN2 & 0x7FF) % 512));

      // Window Control
      outstring = FUNC7(outstring, Vdp2Regs->WCTLB, 0);

      // Shadow Control here

      // Color Ram Address Offset
      FUNC6(outstring, "Color Ram Address Offset = %X\r\n", Vdp2Regs->CRAOFA & 0x700);

      // Special Priority Mode
      outstring = FUNC5(outstring, Vdp2Regs->SFPRMD >> 4);

      // Color Calculation Control here

      // Special Color Calculation Mode here

      // Priority Number
      FUNC6(outstring, "Priority = %d\r\n", Vdp2Regs->PRINB & 0x7);

      // Color Calculation
      outstring = FUNC1(outstring, 0x0004, 0x0005, Vdp2Regs->CCRNB & 0x1F, (Vdp2Regs->SFCCMD >> 4) & 0x3);

      // Color Offset
      outstring = FUNC2(outstring, 0x0004);

      FUNC6(outstring, "Special Color Calculation %d\r\n",(Vdp2Regs->SFCCMD>>4)&0x03);
   }
   else
   {
     // disabled
     *isenabled = 0;
   }
}