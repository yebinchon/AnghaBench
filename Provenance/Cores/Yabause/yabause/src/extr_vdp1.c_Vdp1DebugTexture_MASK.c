#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int CMDCTRL; int CMDSIZE; int CMDPMOD; int CMDCOLR; int CMDSRCA; } ;
typedef  TYPE_1__ vdp1cmd_struct ;
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int CRAOFB; } ;

/* Variables and functions */
 int FUNC0 (int,int,int*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int**,int,int,int,int) ; 
 void* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  Vdp1Ram ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* Vdp2Regs ; 
 scalar_t__ FUNC8 (int) ; 

u32 *FUNC9(u32 number, int *w, int *h)
{
   u16 command;
   vdp1cmd_struct cmd;
   u32 addr;
   u32 *texture;
   u32 charAddr;
   u32 dot;
   u8 SPD;
   u32 alpha;
   u32 *textdata;
   int isendcode=0;
   int code=0;
   int ret;

   if ((addr = FUNC6(number)) == 0xFFFFFFFF)
      return NULL;

   command = FUNC5(Vdp1Ram, addr);

   if (command & 0x8000)
      // Draw End
      return NULL;

   if (command & 0x4000)
      // Command Skipped
      return NULL;

   FUNC7(&cmd, addr, Vdp1Ram);

   switch (cmd.CMDCTRL & 0x000F)
   {
      case 0: // Normal Sprite
      case 1: // Scaled Sprite
      case 2: // Distorted Sprite
      case 3: // Distorted Sprite *
         w[0] = (cmd.CMDSIZE & 0x3F00) >> 5;
         h[0] = cmd.CMDSIZE & 0xFF;

         if ((texture = (u32 *)FUNC8(sizeof(u32) * w[0] * h[0])) == NULL)
            return NULL;

         if (!(cmd.CMDPMOD & 0x80))
         {
            isendcode = 1;
            code = 0;
         }
         else
            isendcode = 0;
         break;
      case 4: // Polygon
      case 5: // Polyline
      case 6: // Line
      case 7: // Polyline *
         // Do 1x1 pixel
         w[0] = 1;
         h[0] = 1;
         if ((texture = (u32 *)FUNC8(sizeof(u32))) == NULL)
            return NULL;

         if (cmd.CMDCOLR & 0x8000)
            texture[0] = FUNC3(0xFF, cmd.CMDCOLR);
         else
            texture[0] = FUNC1(cmd.CMDCOLR);

         return texture;
      case 8: // User Clipping
      case 9: // System Clipping
      case 10: // Local Coordinates
      case 11: // User Clipping *
         return NULL;
      default: // Invalid command
         return NULL;
   }

   charAddr = cmd.CMDSRCA * 8;
   SPD = ((cmd.CMDPMOD & 0x40) != 0);
   alpha = 0xFF;
   textdata = texture;

   switch((cmd.CMDPMOD >> 3) & 0x7)
   {
      case 0:
      {
         // 4 bpp Bank mode
         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
         u16 i;

         for(i = 0;i < h[0];i++)
         {
            u16 j;
            j = 0;
            while(j < w[0])
            {
               dot = FUNC4(Vdp1Ram, charAddr & 0x7FFFF);

               // Pixel 1
               if (isendcode && (ret = FUNC0(dot >> 4, 0xF, &code)) > 0)
               {
                  if (FUNC2(ret, &charAddr, &textdata, w[0], j, 0, 4))
                     break;
               }
               else
               {
                  if (((dot >> 4) == 0) && !SPD) *textdata++ = 0;
                  else *textdata++ = FUNC1(((dot >> 4) | colorBank) + colorOffset);
               }

               j += 1;

               // Pixel 2
               if (isendcode && (ret = FUNC0(dot & 0xF, 0xF, &code)) > 0)
               {
                  if (FUNC2(ret, &charAddr, &textdata, w[0], j, 1, 4))
                     break;
               }
               else
               {
                  if (((dot & 0xF) == 0) && !SPD) *textdata++ = 0;
                  else *textdata++ = FUNC1(((dot & 0xF) | colorBank) + colorOffset);
               }

               j += 1;
               charAddr += 1;
            }
         }
         break;
      }
      case 1:
      {
         // 4 bpp LUT mode
         u32 temp;
         u32 colorLut = cmd.CMDCOLR * 8;
         u16 i;

         for(i = 0;i < h[0];i++)
         {
            u16 j;
            j = 0;
            while(j < w[0])
            {
               dot = FUNC4(Vdp1Ram, charAddr & 0x7FFFF);

               if (isendcode && (ret = FUNC0(dot >> 4, 0xF, &code)) > 0)
               {
                  if (FUNC2(ret, &charAddr, &textdata, w[0], j, 0, 4))
                     break;
               }
               else
               {
                  if (((dot >> 4) == 0) && !SPD)
                     *textdata++ = 0;
                  else
                  {
                     temp = FUNC5(Vdp1Ram, ((dot >> 4) * 2 + colorLut) & 0x7FFFF);
                     if (temp & 0x8000)
                        *textdata++ = FUNC3(0xFF, temp);
                     else
                        *textdata++ = FUNC1(temp);
                  }
               }

               j += 1;

               if (isendcode && (ret = FUNC0(dot & 0xF, 0xF, &code)) > 0)
               {
                  if (FUNC2(ret, &charAddr, &textdata, w[0], j, 1, 4))
                     break;
               }
               else
               {
                  if (((dot & 0xF) == 0) && !SPD)
                     *textdata++ = 0;
                  else
                  {
                     temp = FUNC5(Vdp1Ram, ((dot & 0xF) * 2 + colorLut) & 0x7FFFF);
                     if (temp & 0x8000)
                        *textdata++ = FUNC3(0xFF, temp);
                     else
                        *textdata++ = FUNC1(temp);
                  }
               }

               j += 1;

               charAddr += 1;
            }
         }
         break;
      }
      case 2:
      {
         // 8 bpp(64 color) Bank mode
         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;

         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = FUNC4(Vdp1Ram, charAddr & 0x7FFFF) & 0x3F;
               charAddr++;

               if ((dot == 0) && !SPD) *textdata++ = 0;
               else *textdata++ = FUNC1((dot | colorBank) + colorOffset);
            }
         }
         break;
      }
      case 3:
      {
         // 8 bpp(128 color) Bank mode
         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = FUNC4(Vdp1Ram, charAddr & 0x7FFFF) & 0x7F;
               charAddr++;

               if ((dot == 0) && !SPD) *textdata++ = 0;
               else *textdata++ = FUNC1((dot | colorBank) + colorOffset);
            }
         }
         break;
      }
      case 4:
      {
         // 8 bpp(256 color) Bank mode
         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = FUNC4(Vdp1Ram, charAddr & 0x7FFFF);
               charAddr++;

               if ((dot == 0) && !SPD) *textdata++ = 0;
               else *textdata++ = FUNC1((dot | colorBank) + colorOffset);
            }
         }
         break;
      }
      case 5:
      {
         // 16 bpp Bank mode
         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = FUNC5(Vdp1Ram, charAddr & 0x7FFFF);

               if (isendcode && (ret = FUNC0(dot, 0x7FFF, &code)) > 0)
               {
                  if (FUNC2(ret, &charAddr, &textdata, w[0], j, 0, 16))
                     break;
               }
               else
               {
                  //if (!(dot & 0x8000) && (Vdp2Regs->SPCTL & 0x20)) printf("mixed mode\n");
                  if (!(dot & 0x8000) && !SPD) *textdata++ = 0;
                  else *textdata++ = FUNC3(0xFF, dot);
               }

               charAddr += 2;
            }
         }
         break;
      }
      default:
         break;
   }

   return texture;
}