
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unfolded; int unfolding; int unfold; } ;
typedef TYPE_1__ menu_widget_msg_t ;
struct TYPE_5__ {uintptr_t tag; float target_value; TYPE_1__* userdata; int * subject; int easing_enum; int duration; int cb; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 int menu_animation_push (TYPE_2__*) ;
 int menu_widgets_unfold_end ;
 int widgets_moving ;

__attribute__((used)) static void menu_widgets_move_end(void *userdata)
{
   if (userdata)
   {
      menu_widget_msg_t *unfold = (menu_widget_msg_t*) userdata;

      menu_animation_ctx_entry_t entry;

      entry.cb = menu_widgets_unfold_end;
      entry.duration = MSG_QUEUE_ANIMATION_DURATION;
      entry.easing_enum = EASING_OUT_QUAD;
      entry.subject = &unfold->unfold;
      entry.tag = (uintptr_t) unfold;
      entry.target_value = 1.0f;
      entry.userdata = unfold;

      menu_animation_push(&entry);

      unfold->unfolded = 1;
      unfold->unfolding = 1;
   }
   else
      widgets_moving = 0;
}
