
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hourglass_rotation; } ;
typedef TYPE_1__ menu_widget_msg_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_5__ {uintptr_t tag; int target_value; TYPE_1__* userdata; int cb; int * subject; int duration; int easing_enum; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int HOURGLASS_DURATION ;
 int PI ;
 int menu_animation_push (TYPE_2__*) ;
 int menu_widgets_hourglass_end ;

__attribute__((used)) static void menu_widgets_hourglass_tick(void *userdata)
{
   menu_widget_msg_t *msg = (menu_widget_msg_t*) userdata;
   menu_animation_ctx_tag tag = (uintptr_t) msg;

   menu_animation_ctx_entry_t entry;

   entry.easing_enum = EASING_OUT_QUAD;
   entry.tag = tag;
   entry.duration = HOURGLASS_DURATION;
   entry.target_value = -(2 * PI);
   entry.subject = &msg->hourglass_rotation;
   entry.cb = menu_widgets_hourglass_end;
   entry.userdata = msg;

   menu_animation_push(&entry);
}
