
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* need_draw; scalar_t__* draw_finished; } ;


 scalar_t__ YAB_THREAD_VIDSOFT_PRIORITY_0 ;
 int YabThreadWake (scalar_t__) ;
 TYPE_1__ priority_thread_context ;

void TitanStartPriorityThread(int which)
{
   priority_thread_context.need_draw[which] = 1;
   priority_thread_context.draw_finished[which] = 0;
   YabThreadWake(YAB_THREAD_VIDSOFT_PRIORITY_0 + which);
}
