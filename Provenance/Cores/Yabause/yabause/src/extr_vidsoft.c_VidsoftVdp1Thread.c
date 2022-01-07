
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int draw_finished; int back_framebuffer; int regs; int ram; scalar_t__ need_draw; } ;


 int Vdp1DrawCommands (int ,int *,int ) ;
 int YabThreadSleep () ;
 int memcpy (int ,int ,int) ;
 int vdp1backframebuffer ;
 TYPE_1__ vidsoft_vdp1_thread_context ;

void VidsoftVdp1Thread(void* data)
{
   for (;;)
   {
      if (vidsoft_vdp1_thread_context.need_draw)
      {
         vidsoft_vdp1_thread_context.need_draw = 0;
         Vdp1DrawCommands(vidsoft_vdp1_thread_context.ram, &vidsoft_vdp1_thread_context.regs, vidsoft_vdp1_thread_context.back_framebuffer);
         memcpy(vdp1backframebuffer, vidsoft_vdp1_thread_context.back_framebuffer, 0x40000);
         vidsoft_vdp1_thread_context.draw_finished = 1;
      }

      YabThreadSleep();
   }
}
