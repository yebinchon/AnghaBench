
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_5__ {uintptr_t tag; float duration; float target_value; int * userdata; int * cb; int * subject; int easing_enum; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;
struct TYPE_6__ {int scroll_y; } ;
typedef TYPE_2__ materialui_handle_t ;


 int EASING_IN_OUT_QUAD ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_animation_push (TYPE_1__*) ;
 int menu_input_set_pointer_y_accel (float) ;

__attribute__((used)) static void materialui_animate_scroll(
      materialui_handle_t *mui, float scroll_pos, float duration)
{
   menu_animation_ctx_tag animation_tag = (uintptr_t)&mui->scroll_y;
   menu_animation_ctx_entry_t animation_entry;


   menu_animation_kill_by_tag(&animation_tag);




   menu_input_set_pointer_y_accel(0.0f);


   animation_entry.easing_enum = EASING_IN_OUT_QUAD;
   animation_entry.tag = animation_tag;
   animation_entry.duration = duration;
   animation_entry.target_value = scroll_pos;
   animation_entry.subject = &mui->scroll_y;
   animation_entry.cb = ((void*)0);
   animation_entry.userdata = ((void*)0);


   menu_animation_push(&animation_entry);
}
