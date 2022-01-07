
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int TVMR; } ;


 int VIDGCDVdp1EraseFrameBuffer () ;
 TYPE_1__* Vdp1Regs ;
 int vdp1height ;
 int vdp1pixelsize ;
 int vdp1width ;

void VIDGCDVdp1DrawStart(void)
{
   if (Vdp1Regs->TVMR & 0x1)
   {
      if (Vdp1Regs->TVMR & 0x2)
      {

         vdp1width = 512;
         vdp1height = 512;
      }
      else
      {

         vdp1width = 1024;
         vdp1width = 256;
      }

      vdp1pixelsize = 1;
   }
   else
   {

      vdp1width = 512;
      vdp1height = 256;
      vdp1pixelsize = 2;
   }

   VIDGCDVdp1EraseFrameBuffer();
}
