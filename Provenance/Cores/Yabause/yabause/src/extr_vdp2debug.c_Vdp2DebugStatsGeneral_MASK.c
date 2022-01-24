#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int U; } ;
struct TYPE_5__ {int all; TYPE_1__ part; } ;
struct TYPE_6__ {int TVMD; int TVSTAT; int EXTEN; int BKTAU; int BKTAL; int SPCTL; int SDCTL; int WCTLC; int CRAOFB; int CCCTL; TYPE_2__ LCTA; int /*<<< orphan*/  VCNT; int /*<<< orphan*/  HCNT; int /*<<< orphan*/  CCRSA; int /*<<< orphan*/  PRISA; } ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* FUNC2 (char*,int,int) ; 
 TYPE_3__* Vdp2Regs ; 

void FUNC3(char *outstring, int *isenabled)
{
   u8 *sprprilist = (u8 *)&Vdp2Regs->PRISA;
   u8 *sprccrlist = (u8 *)&Vdp2Regs->CCRSA;
   int i;

   if (Vdp2Regs->TVMD & 0x8000)
   {
      // TVMD stuff
      FUNC1(outstring, "Border Color Mode = %s\r\n", Vdp2Regs->TVMD & 0x100 ? "Back screen" : "Black");

      FUNC1(outstring, "Display Resolution = ");
      switch (Vdp2Regs->TVMD & 0x7)
      {
         case 0:
         case 4:
            FUNC1(outstring, "320");
            break;
         case 1:
         case 5:
            FUNC1(outstring, "352");
            break;
         case 2:
         case 6:
            FUNC1(outstring, "640");
            break;
         case 3:
         case 7:
            FUNC1(outstring, "704");
            break;
         default:
            FUNC1(outstring, "Invalid");
            break;
      }

      FUNC1(outstring, " x ");

      switch ((Vdp2Regs->TVMD >> 4) & 0x3)
      {
         case 0:
            FUNC1(outstring, "224");
            break;
         case 1:
            FUNC1(outstring, "240");
            break;
         case 2:
            FUNC1(outstring, "256");
            break;
         default:
            FUNC1(outstring, "Invalid");
            break;
      }

      if (Vdp2Regs->TVSTAT & 0x1)
      {
         FUNC1(outstring, "(PAL)\r\n");
      }
      else
      {
         FUNC1(outstring, "(NTSC)\r\n");
      }

      FUNC1(outstring, "Interlace Mode = ");
      switch ((Vdp2Regs->TVMD >> 6) & 0x3)
      {
         case 0:
            FUNC1(outstring, "Non-Interlace\r\n");
            break;
         case 2:
            FUNC1(outstring, "Single-Density Interlace\r\n");
            break;
         case 3:
            FUNC1(outstring, "Double-Density Interlace\r\n");
            break;
         default:
            FUNC1(outstring, "Invalid\r\n");
            break;
      }

      // Latch stuff
      FUNC1(outstring, "Latches HV counter when %s\r\n", Vdp2Regs->EXTEN & 0x200 ? "external signal triggers it" : "external latch flag is read");
      if (Vdp2Regs->EXTEN & 0x100)
      {
         FUNC1(outstring, "External Sync is being inputed\r\n");
      }

      // Screen status stuff
      if (Vdp2Regs->TVSTAT & 0x200)
      {
         FUNC1(outstring, "HV is latched\r\n");
      }

      if (Vdp2Regs->TVSTAT & 0x4)
      {
         FUNC1(outstring, "During H-Blank\r\n");
      }

      if (Vdp2Regs->TVSTAT & 0x8)
      {
         FUNC1(outstring, "During V-Blank\r\n");
      }

      if ((Vdp2Regs->TVMD >> 6) & 0x2)
      {
         FUNC1(outstring, "During %s Field\r\n", Vdp2Regs->TVSTAT & 0x2 ? "Odd" : "Even");
      }

      FUNC1(outstring, "H Counter = %d\r\n", Vdp2Regs->HCNT);
      FUNC1(outstring, "V Counter = %d\r\n", Vdp2Regs->VCNT);
      FUNC1(outstring, "\r\n");

      // Line color screen stuff
      FUNC1(outstring, "Line Color Screen Stuff\r\n");
      FUNC1(outstring, "-----------------------\r\n");
      FUNC1(outstring, "Mode = %s\r\n", Vdp2Regs->LCTA.part.U & 0x8000 ? "Color per line" : "Single color");
      FUNC1(outstring, "Address = %08lX\r\n", 0x05E00000UL | ((Vdp2Regs->LCTA.all & 0x7FFFFUL) * 2));
      FUNC1(outstring, "\r\n");

      // Back screen stuff
      FUNC1(outstring, "Back Screen Stuff\r\n");
      FUNC1(outstring, "-----------------\r\n");
      FUNC1(outstring, "Mode = %s\r\n", Vdp2Regs->BKTAU & 0x8000 ? "Color per line" : "Single color");
      FUNC1(outstring, "Address = %08X\r\n", 0x05E00000 | (((Vdp2Regs->BKTAU & 0x7) << 16)  | Vdp2Regs->BKTAL) * 2);
      outstring = FUNC0(outstring, 0x0020);
      FUNC1(outstring, "\r\n");

      // Cycle patterns here

      // Sprite stuff
      FUNC1(outstring, "Sprite Stuff\r\n");
      FUNC1(outstring, "------------\r\n");
      FUNC1(outstring, "Sprite Type = %X\r\n", Vdp2Regs->SPCTL & 0xF);
      FUNC1(outstring, "VDP1 Framebuffer Data Format = %s\r\n", Vdp2Regs->SPCTL & 0x20 ? "RGB and palette" : "Palette only");

      if (Vdp2Regs->SDCTL & 0x100)
      {
         FUNC1(outstring, "Transparent Shadow Enabled\r\n");
      }

      if (Vdp2Regs->SPCTL & 0x20)
      {
         FUNC1(outstring, "Sprite Window Enabled\r\n");
      }

      outstring = FUNC2(outstring, Vdp2Regs->WCTLC >> 8, 1);

      FUNC1(outstring, "Color RAM Offset = %X\r\n", (Vdp2Regs->CRAOFB >> 4) & 0x7);

      if (Vdp2Regs->CCCTL & 0x40)
      {
         FUNC1(outstring, "Color Calculation Enabled\r\n");

         if (Vdp2Regs->CCCTL & 0x8000 && (Vdp2Regs->CCCTL & 0x0700) == 0)
         {
            FUNC1(outstring, "Gradation Calculation Enabled\r\n");
         }
         else if (Vdp2Regs->CCCTL & 0x0400)
         {
            FUNC1(outstring, "Extended Color Calculation Enabled\r\n");
         }

         FUNC1(outstring, "Color Calculation Condition = ");

         switch ((Vdp2Regs->SPCTL >> 12) & 0x3)
         {
             case 0:
                FUNC1(outstring, "Priority <= CC Condition Number");
                break;
             case 1:
                FUNC1(outstring, "Priority == CC Condition Number");
                break;
             case 2:
                FUNC1(outstring, "Priority >= CC Condition Number");
                break;
             case 3:
                FUNC1(outstring, "Color Data MSB");
                break;
             default: break;
         }
         FUNC1(outstring, "\r\n");

         if (((Vdp2Regs->SPCTL >> 12) & 0x3) != 0x3)
         {
            FUNC1(outstring, "Color Calculation Condition Number = %d\r\n", (Vdp2Regs->SPCTL >> 8) & 0x7);
         }

         for (i = 0; i < 8; i++)
         {
#ifdef WORDS_BIGENDIAN
            int ratio = sprccrlist[i ^ 1] & 0x7;
#else
            int ratio = sprccrlist[i] & 0x7;
#endif
            FUNC1(outstring, "Color Calculation Ratio %d = %d:%d\r\n", i, 31 - ratio, 1 + ratio);
         }
      }

      for (i = 0; i < 8; i++)
      {
#ifdef WORDS_BIGENDIAN
         int priority = sprprilist[i ^ 1] & 0x7;
#else
         int priority = sprprilist[i] & 0x7;
#endif
         FUNC1(outstring, "Priority %d = %d\r\n", i, priority);
      }

      outstring = FUNC0(outstring, 0x0040);
      *isenabled = 1;
   }
   else
   {
      *isenabled = 0;
   }
}