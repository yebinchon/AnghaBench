
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* draw_finished; int color_ram; int lines; int ram; int regs; scalar_t__* need_draw; } ;


 size_t TITAN_SPRITE ;
 int Vdp1Regs ;
 int VidsoftDrawSprite (int *,int ,int ,int ,int ,int ,int ) ;
 int YabThreadSleep () ;
 int sprite_window_mask ;
 int vdp1frontframebuffer ;
 TYPE_1__ vidsoft_thread_context ;

void VidsoftSpriteThread(void * data)
{
   for (;;)
   {
      if (vidsoft_thread_context.need_draw[TITAN_SPRITE])
      {
         vidsoft_thread_context.need_draw[TITAN_SPRITE] = 0;
         VidsoftDrawSprite(&vidsoft_thread_context.regs, sprite_window_mask, vdp1frontframebuffer, vidsoft_thread_context.ram, Vdp1Regs,vidsoft_thread_context.lines, vidsoft_thread_context.color_ram);
         vidsoft_thread_context.draw_finished[TITAN_SPRITE] = 1;
      }
      YabThreadSleep();
   }
}
