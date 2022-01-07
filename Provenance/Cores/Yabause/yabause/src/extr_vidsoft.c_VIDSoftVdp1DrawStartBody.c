
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int FBCR; int TVMR; } ;
typedef TYPE_1__ Vdp1 ;


 int VIDSoftVdp1EraseFrameBuffer (TYPE_1__*,int *) ;
 int vdp1height ;
 int vdp1interlace ;
 int vdp1pixelsize ;
 int vdp1width ;

void VIDSoftVdp1DrawStartBody(Vdp1* regs, u8 * back_framebuffer)
{
   if (regs->FBCR & 8)
      vdp1interlace = 2;
   else
      vdp1interlace = 1;
   if (regs->TVMR & 0x1)
   {
      if (regs->TVMR & 0x2)
      {

         vdp1width = 512;
         vdp1height = 512;
      }
      else
      {

         vdp1width = 1024;
         vdp1height = 256;
      }

      vdp1pixelsize = 1;
   }
   else
   {

      vdp1width = 512;
      vdp1height = 256;
      vdp1pixelsize = 2;
   }

   VIDSoftVdp1EraseFrameBuffer(regs, back_framebuffer);




}
