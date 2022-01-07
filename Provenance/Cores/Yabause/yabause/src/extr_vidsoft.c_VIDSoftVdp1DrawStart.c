
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Vdp1 ;
struct TYPE_2__ {int need_draw; scalar_t__ draw_finished; int * back_framebuffer; int regs; int * ram; } ;


 int VIDSoftVdp1DrawStartBody (int *,int *) ;
 int Vdp1DrawCommands (int *,int *,int *) ;
 int Vdp1FakeDrawCommands (int *,int *) ;
 int * Vdp1Ram ;
 int * Vdp1Regs ;
 int VidsoftWaitForVdp1Thread () ;
 int YAB_THREAD_VIDSOFT_VDP1 ;
 int YabThreadWake (int ) ;
 int memcpy (int *,int *,int) ;
 int * vdp1backframebuffer ;
 TYPE_1__ vidsoft_vdp1_thread_context ;
 scalar_t__ vidsoft_vdp1_thread_enabled ;

void VIDSoftVdp1DrawStart()
{
   if (vidsoft_vdp1_thread_enabled)
   {
      VidsoftWaitForVdp1Thread();


      memcpy(vidsoft_vdp1_thread_context.ram, Vdp1Ram, 0x80000);
      memcpy(&vidsoft_vdp1_thread_context.regs, Vdp1Regs, sizeof(Vdp1));
      memcpy(vidsoft_vdp1_thread_context.back_framebuffer, vdp1backframebuffer, 0x40000);

      VIDSoftVdp1DrawStartBody(&vidsoft_vdp1_thread_context.regs, vidsoft_vdp1_thread_context.back_framebuffer);


      vidsoft_vdp1_thread_context.draw_finished = 0;
      vidsoft_vdp1_thread_context.need_draw = 1;
      YabThreadWake(YAB_THREAD_VIDSOFT_VDP1);

      Vdp1FakeDrawCommands(Vdp1Ram, Vdp1Regs);
   }
   else
   {
      VIDSoftVdp1DrawStartBody(Vdp1Regs, vdp1backframebuffer);
      Vdp1DrawCommands(Vdp1Ram, Vdp1Regs, vdp1backframebuffer);
   }
}
