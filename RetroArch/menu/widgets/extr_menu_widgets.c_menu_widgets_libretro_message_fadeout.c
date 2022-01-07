
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_3__ {uintptr_t tag; float target_value; int * userdata; int * subject; int easing_enum; int duration; int * cb; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 int libretro_message_alpha ;
 int libretro_message_timer ;
 int menu_animation_push (TYPE_1__*) ;

__attribute__((used)) static void menu_widgets_libretro_message_fadeout(void *userdata)
{
   menu_animation_ctx_tag tag = (uintptr_t) &libretro_message_timer;
   menu_animation_ctx_entry_t entry;


   entry.cb = ((void*)0);
   entry.duration = MSG_QUEUE_ANIMATION_DURATION;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.subject = &libretro_message_alpha;
   entry.tag = tag;
   entry.target_value = 0.0f;
   entry.userdata = ((void*)0);

   menu_animation_push(&entry);
}
