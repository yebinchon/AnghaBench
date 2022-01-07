
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int expiration_timer_started; int expiration_timer; } ;
typedef TYPE_1__ menu_widget_msg_t ;
struct TYPE_6__ {unsigned int duration; TYPE_1__* userdata; int cb; } ;
typedef TYPE_2__ menu_timer_ctx_entry_t ;


 int menu_timer_start (int *,TYPE_2__*) ;
 int menu_widgets_msg_queue_expired ;

__attribute__((used)) static void menu_widgets_start_msg_expiration_timer(menu_widget_msg_t *msg_widget, unsigned duration)
{
   menu_timer_ctx_entry_t timer;
   if (msg_widget->expiration_timer_started)
      return;

   timer.cb = menu_widgets_msg_queue_expired;
   timer.duration = duration;
   timer.userdata = msg_widget;

   menu_timer_start(&msg_widget->expiration_timer, &timer);

   msg_widget->expiration_timer_started = 1;
}
