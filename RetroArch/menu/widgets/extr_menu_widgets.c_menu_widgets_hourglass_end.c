
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float hourglass_rotation; int hourglass_timer; } ;
typedef TYPE_1__ menu_widget_msg_t ;
struct TYPE_5__ {TYPE_1__* userdata; int duration; int cb; } ;
typedef TYPE_2__ menu_timer_ctx_entry_t ;


 int HOURGLASS_INTERVAL ;
 int menu_timer_start (int *,TYPE_2__*) ;
 int menu_widgets_hourglass_tick ;

__attribute__((used)) static void menu_widgets_hourglass_end(void *userdata)
{
   menu_timer_ctx_entry_t timer;
   menu_widget_msg_t *msg = (menu_widget_msg_t*) userdata;

   msg->hourglass_rotation = 0.0f;

   timer.cb = menu_widgets_hourglass_tick;
   timer.duration = HOURGLASS_INTERVAL;
   timer.userdata = msg;

   menu_timer_start(&msg->hourglass_timer, &timer);
}
