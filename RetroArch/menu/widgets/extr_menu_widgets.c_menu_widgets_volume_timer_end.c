
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float target_value; int * subject; int * userdata; int tag; int easing_enum; int duration; int * cb; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 int menu_animation_push (TYPE_1__*) ;
 int volume_alpha ;
 int volume_tag ;
 int volume_text_alpha ;

__attribute__((used)) static void menu_widgets_volume_timer_end(void *userdata)
{
   menu_animation_ctx_entry_t entry;

   entry.cb = ((void*)0);
   entry.duration = MSG_QUEUE_ANIMATION_DURATION;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.subject = &volume_alpha;
   entry.tag = volume_tag;
   entry.target_value = 0.0f;
   entry.userdata = ((void*)0);

   menu_animation_push(&entry);

   entry.subject = &volume_text_alpha;

   menu_animation_push(&entry);
}
