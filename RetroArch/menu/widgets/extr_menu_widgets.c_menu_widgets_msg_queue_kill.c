
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dying; float offset_y; float alpha; } ;
typedef TYPE_1__ menu_widget_msg_t ;
struct TYPE_5__ {uintptr_t tag; float* subject; float target_value; int * cb; int * userdata; int easing_enum; int duration; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 int current_msgs ;
 scalar_t__ file_list_get_userdata_at_offset (int ,unsigned int) ;
 int menu_animation_push (TYPE_2__*) ;
 int * menu_widgets_msg_queue_kill_end ;
 int menu_widgets_msg_queue_move () ;
 int msg_queue_height ;
 unsigned int msg_queue_kill ;
 int widgets_moving ;

__attribute__((used)) static void menu_widgets_msg_queue_kill(unsigned idx)
{
   menu_animation_ctx_entry_t entry;

   menu_widget_msg_t *msg = (menu_widget_msg_t*)
      file_list_get_userdata_at_offset(current_msgs, idx);

   if (!msg)
      return;

   widgets_moving = 1;
   msg->dying = 1;

   msg_queue_kill = idx;


   entry.cb = ((void*)0);
   entry.duration = MSG_QUEUE_ANIMATION_DURATION;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.tag = (uintptr_t) msg;
   entry.userdata = ((void*)0);
   entry.subject = &msg->offset_y;
   entry.target_value = msg->offset_y - msg_queue_height/4;

   menu_animation_push(&entry);


   entry.cb = menu_widgets_msg_queue_kill_end;
   entry.subject = &msg->alpha;
   entry.target_value = 0.0f;

   menu_animation_push(&entry);


   menu_widgets_msg_queue_move();
}
