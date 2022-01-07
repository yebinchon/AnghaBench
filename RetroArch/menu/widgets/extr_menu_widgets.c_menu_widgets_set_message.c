
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * userdata; int duration; int cb; } ;
typedef TYPE_1__ menu_timer_ctx_entry_t ;
typedef uintptr_t menu_animation_ctx_tag ;


 int DEFAULT_BACKDROP ;
 int GENERIC_MESSAGE_DURATION ;
 int GENERIC_MESSAGE_SIZE ;
 int generic_message ;
 int generic_message_alpha ;
 int generic_message_timer ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_timer_kill (int *) ;
 int menu_timer_start (int *,TYPE_1__*) ;
 int menu_widgets_generic_message_fadeout ;
 int strlcpy (int ,char*,int ) ;

void menu_widgets_set_message(char *msg)
{
   menu_animation_ctx_tag tag = (uintptr_t) &generic_message_timer;
   menu_timer_ctx_entry_t timer;

   strlcpy(generic_message, msg, GENERIC_MESSAGE_SIZE);

   generic_message_alpha = DEFAULT_BACKDROP;


   menu_timer_kill(&generic_message_timer);
   menu_animation_kill_by_tag(&tag);

   timer.cb = menu_widgets_generic_message_fadeout;
   timer.duration = GENERIC_MESSAGE_DURATION;
   timer.userdata = ((void*)0);

   menu_timer_start(&generic_message_timer, &timer);
}
