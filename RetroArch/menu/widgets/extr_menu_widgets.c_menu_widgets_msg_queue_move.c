
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float offset_y; int unfolded; scalar_t__ task_ptr; scalar_t__ dying; } ;
typedef TYPE_1__ menu_widget_msg_t ;
struct TYPE_7__ {float* subject; uintptr_t tag; float target_value; TYPE_1__* userdata; int easing_enum; int duration; int * cb; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;
struct TYPE_8__ {int size; } ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 TYPE_4__* current_msgs ;
 scalar_t__ file_list_get_userdata_at_offset (TYPE_4__*,int) ;
 int menu_animation_push (TYPE_2__*) ;
 int * menu_widgets_move_end ;
 int msg_queue_height ;
 scalar_t__ msg_queue_spacing ;
 int widgets_moving ;

__attribute__((used)) static void menu_widgets_msg_queue_move(void)
{
   int i;
   float y = 0;

   menu_widget_msg_t *unfold = ((void*)0);

   if (current_msgs->size == 0)
      return;

   for (i = (int)(current_msgs->size-1); i >= 0; i--)
   {
      menu_widget_msg_t *msg = (menu_widget_msg_t*)
         file_list_get_userdata_at_offset(current_msgs, i);

      if (!msg || msg->dying)
         continue;

      y += msg_queue_height / (msg->task_ptr ? 2 : 1) + msg_queue_spacing;

      if (!msg->unfolded)
         unfold = msg;

      if (msg->offset_y != y)
      {
         menu_animation_ctx_entry_t entry;

         entry.cb = i == 0 ? menu_widgets_move_end : ((void*)0);
         entry.duration = MSG_QUEUE_ANIMATION_DURATION;
         entry.easing_enum = EASING_OUT_QUAD;
         entry.subject = &msg->offset_y;
         entry.tag = (uintptr_t) msg;
         entry.target_value = y;
         entry.userdata = unfold;

         menu_animation_push(&entry);

         widgets_moving = 1;
      }
   }
}
