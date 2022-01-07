
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int FBCR; int EWRR; int EWLR; int EWDR; } ;
typedef TYPE_1__ Vdp1 ;
struct TYPE_5__ {scalar_t__ manualerase; } ;


 TYPE_2__ Vdp1External ;
 int vdp1height ;
 int vdp1pixelsize ;
 int vdp1width ;

void VIDSoftVdp1EraseFrameBuffer(Vdp1* regs, u8 * back_framebuffer)
{
   int i,i2;
   int w,h;

   if (((regs->FBCR & 2) == 0) || Vdp1External.manualerase)
   {
      h = (regs->EWRR & 0x1FF) + 1;
      if (h > vdp1height) h = vdp1height;
      w = ((regs->EWRR >> 6) & 0x3F8) + 8;
      if (w > vdp1width) w = vdp1width;

      if (vdp1pixelsize == 2)
      {
         for (i2 = (regs->EWLR & 0x1FF); i2 < h; i2++)
         {
            for (i = ((regs->EWLR >> 6) & 0x1F8); i < w; i++)
               ((u16 *)back_framebuffer)[(i2 * vdp1width) + i] = regs->EWDR;
         }
      }
      else
      {
         w = regs->EWRR >> 9;
         w *= 16;

         for (i2 = (regs->EWLR & 0x1FF); i2 < h; i2++)
         {
            for (i = ((regs->EWLR >> 6) & 0x1F8); i < w; i++)
            {
               int pos = (i2 * vdp1width) + i;

               if (pos < 0x3FFFF)
                  back_framebuffer[pos] = regs->EWDR & 0xFF;
            }
         }
      }
      Vdp1External.manualerase = 0;
   }
}
