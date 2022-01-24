#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int CMDCTRL; int CMDSIZE; int CMDPMOD; int CMDCOLR; scalar_t__ CMDGRDA; scalar_t__ CMDSRCA; int /*<<< orphan*/  CMDYA; int /*<<< orphan*/  CMDXA; int /*<<< orphan*/  CMDYC; int /*<<< orphan*/  CMDXC; int /*<<< orphan*/  CMDYD; int /*<<< orphan*/  CMDXD; int /*<<< orphan*/  CMDYB; int /*<<< orphan*/  CMDXB; } ;
typedef  TYPE_1__ vdp1cmd_struct ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  Vdp1Ram ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

void FUNC4(u32 number, char *outstring)
{
   u16 command;
   vdp1cmd_struct cmd;
   u32 addr;

   if ((addr = FUNC2(number)) == 0xFFFFFFFF)
      return;

   command = FUNC1(Vdp1Ram, addr);

   if (command & 0x8000)
   {
      // Draw End
      outstring[0] = 0x00;
      return;
   }

   if (command & 0x4000)
   {
      FUNC0(outstring, "Command is skipped\r\n");
      return;
   }

   FUNC3(&cmd, addr, Vdp1Ram);

   switch (cmd.CMDCTRL & 0x000F)
   {
      case 0:
         FUNC0(outstring, "Normal Sprite\r\n");
         FUNC0(outstring, "x = %d, y = %d\r\n", cmd.CMDXA, cmd.CMDYA);
         break;
      case 1:
         FUNC0(outstring, "Scaled Sprite\r\n");

         FUNC0(outstring, "Zoom Point: ");

         switch ((cmd.CMDCTRL >> 8) & 0xF)
         {
            case 0x0:
               FUNC0(outstring, "Only two coordinates\r\n");
               break;
            case 0x5:
               FUNC0(outstring, "Upper-left\r\n");
               break;
            case 0x6:
               FUNC0(outstring, "Upper-center\r\n");
               break;
            case 0x7:
               FUNC0(outstring, "Upper-right\r\n");
               break;
            case 0x9:
               FUNC0(outstring, "Center-left\r\n");
               break;
            case 0xA:
               FUNC0(outstring, "Center-center\r\n");
               break;
            case 0xB:
               FUNC0(outstring, "Center-right\r\n");
               break;
            case 0xC:
               FUNC0(outstring, "Lower-left\r\n");
               break;
            case 0xE:
               FUNC0(outstring, "Lower-center\r\n");
               break;
            case 0xF:
               FUNC0(outstring, "Lower-right\r\n");
               break;
            default: break;
         }

         if (((cmd.CMDCTRL >> 8) & 0xF) == 0)
         {
            FUNC0(outstring, "xa = %d, ya = %d, xc = %d, yc = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXC, cmd.CMDYC);
         }
         else
         {
            FUNC0(outstring, "xa = %d, ya = %d, xb = %d, yb = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         }

         break;
      case 2:
         FUNC0(outstring, "Distorted Sprite\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         FUNC0(outstring, "x3 = %d, y3 = %d, x4 = %d, y4 = %d\r\n", cmd.CMDXC, cmd.CMDYC, cmd.CMDXD, cmd.CMDYD);
         break;
      case 3:
         FUNC0(outstring, "Distorted Sprite *\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         FUNC0(outstring, "x3 = %d, y3 = %d, x4 = %d, y4 = %d\r\n", cmd.CMDXC, cmd.CMDYC, cmd.CMDXD, cmd.CMDYD);
         break;
      case 4:
         FUNC0(outstring, "Polygon\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         FUNC0(outstring, "x3 = %d, y3 = %d, x4 = %d, y4 = %d\r\n", cmd.CMDXC, cmd.CMDYC, cmd.CMDXD, cmd.CMDYD);
         break;
      case 5:
         FUNC0(outstring, "Polyline\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         FUNC0(outstring, "x3 = %d, y3 = %d, x4 = %d, y4 = %d\r\n", cmd.CMDXC, cmd.CMDYC, cmd.CMDXD, cmd.CMDYD);
         break;
      case 6:
         FUNC0(outstring, "Line\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         break;
      case 7:
         FUNC0(outstring, "Polyline *\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXB, cmd.CMDYB);
         FUNC0(outstring, "x3 = %d, y3 = %d, x4 = %d, y4 = %d\r\n", cmd.CMDXC, cmd.CMDYC, cmd.CMDXD, cmd.CMDYD);
         break;
      case 8:
         FUNC0(outstring, "User Clipping\r\n");
         FUNC0(outstring, "x1 = %d, y1 = %d, x2 = %d, y2 = %d\r\n", cmd.CMDXA, cmd.CMDYA, cmd.CMDXC, cmd.CMDYC);
         break;
      case 9:
         FUNC0(outstring, "System Clipping\r\n");
         FUNC0(outstring, "x1 = 0, y1 = 0, x2 = %d, y2 = %d\r\n", cmd.CMDXC, cmd.CMDYC);
         break;
      case 10:
         FUNC0(outstring, "Local Coordinates\r\n");
         FUNC0(outstring, "x = %d, y = %d\r\n", cmd.CMDXA, cmd.CMDYA);
         break;
      default:
         FUNC0(outstring, "Invalid command\r\n");
         return;
   }

   // Only Sprite commands use CMDSRCA, CMDSIZE
   if (!(cmd.CMDCTRL & 0x000C))
   {
      FUNC0(outstring, "Texture address = %08X\r\n", ((unsigned int)cmd.CMDSRCA) << 3);
      FUNC0(outstring, "Texture width = %d, height = %d\r\n", (cmd.CMDSIZE & 0x3F00) >> 5, cmd.CMDSIZE & 0xFF);
      FUNC0(outstring, "Texture read direction: ");

      switch ((cmd.CMDCTRL >> 4) & 0x3)
      {
         case 0:
            FUNC0(outstring, "Normal\r\n");
            break;
         case 1:
            FUNC0(outstring, "Reversed horizontal\r\n");
            break;
         case 2:
            FUNC0(outstring, "Reversed vertical\r\n");
            break;
         case 3:
            FUNC0(outstring, "Reversed horizontal and vertical\r\n");
            break;
         default: break;
      }
   }

   // Only draw commands use CMDPMOD
   if (!(cmd.CMDCTRL & 0x0008))
   {
      if (cmd.CMDPMOD & 0x8000)
      {
         FUNC0(outstring, "MSB set\r\n");
      }

      if (cmd.CMDPMOD & 0x1000)
      {
         FUNC0(outstring, "High Speed Shrink Enabled\r\n");
      }

      if (!(cmd.CMDPMOD & 0x0800))
      {
         FUNC0(outstring, "Pre-clipping Enabled\r\n");
      }

      if (cmd.CMDPMOD & 0x0400)
      {
         FUNC0(outstring, "User Clipping Enabled\r\n");
         FUNC0(outstring, "Clipping Mode = %d\r\n", (cmd.CMDPMOD >> 9) & 0x1);
      }

      if (cmd.CMDPMOD & 0x0100)
      {
         FUNC0(outstring, "Mesh Enabled\r\n");
      }

      if (!(cmd.CMDPMOD & 0x0080))
      {
         FUNC0(outstring, "End Code Enabled\r\n");
      }

      if (!(cmd.CMDPMOD & 0x0040))
      {
         FUNC0(outstring, "Transparent Pixel Enabled\r\n");
      }

      FUNC0(outstring, "Color mode: ");

      switch ((cmd.CMDPMOD >> 3) & 0x7)
      {
         case 0:
            FUNC0(outstring, "4 BPP(16 color bank)\r\n");
            FUNC0(outstring, "Color bank: %08X\r\n", (cmd.CMDCOLR << 3));
            break;
         case 1:
            FUNC0(outstring, "4 BPP(16 color LUT)\r\n");
            FUNC0(outstring, "Color lookup table: %08X\r\n", (cmd.CMDCOLR << 3));
            break;
         case 2:
            FUNC0(outstring, "8 BPP(64 color bank)\r\n");
            FUNC0(outstring, "Color bank: %08X\r\n", (cmd.CMDCOLR << 3));
            break;
         case 3:
            FUNC0(outstring, "8 BPP(128 color bank)\r\n");
            FUNC0(outstring, "Color bank: %08X\r\n", (cmd.CMDCOLR << 3));
            break;
         case 4:
            FUNC0(outstring, "8 BPP(256 color bank)\r\n");
            FUNC0(outstring, "Color bank: %08X\r\n", (cmd.CMDCOLR << 3));
            break;
         case 5:
            FUNC0(outstring, "15 BPP(RGB)\r\n");

            // Only non-textured commands
            if (cmd.CMDCTRL & 0x0004)
            {
               FUNC0(outstring, "Non-textured color: %04X\r\n", cmd.CMDCOLR);
            }
            break;
         default: break;
      }

      FUNC0(outstring, "Color Calc. mode: ");

      switch (cmd.CMDPMOD & 0x7)
      {
         case 0:
            FUNC0(outstring, "Replace\r\n");
            break;
         case 1:
            FUNC0(outstring, "Cannot overwrite/Shadow\r\n");
            break;
         case 2:
            FUNC0(outstring, "Half-luminance\r\n");
            break;
         case 3:
            FUNC0(outstring, "Replace/Half-transparent\r\n");
            break;
         case 4:
            FUNC0(outstring, "Gouraud Shading\r\n");
            FUNC0(outstring, "Gouraud Shading Table = %08X\r\n", ((unsigned int)cmd.CMDGRDA) << 3);
            break;
         case 6:
            FUNC0(outstring, "Gouraud Shading + Half-luminance\r\n");
            FUNC0(outstring, "Gouraud Shading Table = %08X\r\n", ((unsigned int)cmd.CMDGRDA) << 3);
            break;
         case 7:
            FUNC0(outstring, "Gouraud Shading/Gouraud Shading + Half-transparent\r\n");
            FUNC0(outstring, "Gouraud Shading Table = %08X\r\n", ((unsigned int)cmd.CMDGRDA) << 3);
            break;
         default: break;
      }
   }
}