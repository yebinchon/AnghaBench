
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float target_value; int * userdata; int tag; int * subject; int easing_enum; int duration; int cb; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 scalar_t__ cheevo_height ;
 int cheevo_y ;
 int menu_animation_push (TYPE_1__*) ;
 int menu_widgets_achievement_free ;
 int menu_widgets_generic_tag ;

__attribute__((used)) static void menu_widgets_achievement_dismiss(void *userdata)
{
   menu_animation_ctx_entry_t entry;


   entry.cb = menu_widgets_achievement_free;
   entry.duration = MSG_QUEUE_ANIMATION_DURATION;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.subject = &cheevo_y;
   entry.tag = menu_widgets_generic_tag;
   entry.target_value = (float)(-(int)(cheevo_height));
   entry.userdata = ((void*)0);

   menu_animation_push(&entry);
}
