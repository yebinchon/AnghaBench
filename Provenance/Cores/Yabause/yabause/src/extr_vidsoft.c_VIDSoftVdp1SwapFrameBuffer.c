
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ manualchange; } ;
struct TYPE_3__ {int FBCR; } ;


 TYPE_2__ Vdp1External ;
 TYPE_1__* Vdp1Regs ;
 int VidsoftWaitForVdp1Thread () ;
 int * vdp1backframebuffer ;
 int * vdp1frontframebuffer ;
 scalar_t__ vidsoft_vdp1_thread_enabled ;

void VIDSoftVdp1SwapFrameBuffer(void)
{
   if (((Vdp1Regs->FBCR & 2) == 0) || Vdp1External.manualchange)
   {
  u8 *temp;
      if (vidsoft_vdp1_thread_enabled)
      {
         VidsoftWaitForVdp1Thread();
      }

      temp = vdp1frontframebuffer;
      vdp1frontframebuffer = vdp1backframebuffer;
      vdp1backframebuffer = temp;
      Vdp1External.manualchange = 0;
   }
}
