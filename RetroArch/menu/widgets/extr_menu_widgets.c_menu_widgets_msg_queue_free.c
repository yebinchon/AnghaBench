
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ msg; int expiration_timer; scalar_t__ expiration_timer_started; int hourglass_timer; TYPE_1__* task_ptr; int task_cancelled; int task_error; int task_finished; } ;
typedef TYPE_2__ menu_widget_msg_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_8__ {int size; int * list; } ;
struct TYPE_6__ {int * frontend_userdata; } ;


 TYPE_4__* current_msgs ;
 int file_list_free_userdata (TYPE_4__*,size_t) ;
 int free (scalar_t__) ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_timer_kill (int *) ;
 size_t msg_queue_kill ;
 int msg_queue_tasks_count ;
 int widgets_moving ;

__attribute__((used)) static void menu_widgets_msg_queue_free(menu_widget_msg_t *msg, bool touch_list)
{
   size_t i;
   menu_animation_ctx_tag tag = (uintptr_t) msg;

   if (msg->task_ptr)
   {



      if (!msg->task_finished && !msg->task_error && !msg->task_cancelled)
         msg->task_ptr->frontend_userdata = ((void*)0);


      msg_queue_tasks_count--;
   }


   menu_timer_kill(&msg->hourglass_timer);
   menu_animation_kill_by_tag(&tag);


   if (msg->expiration_timer_started)
      menu_timer_kill(&msg->expiration_timer);


   if (msg->msg)
      free(msg->msg);


   if (touch_list)
   {
      file_list_free_userdata(current_msgs, msg_queue_kill);

      for (i = msg_queue_kill; i < current_msgs->size-1; i++)
         current_msgs->list[i] = current_msgs->list[i+1];

      current_msgs->size--;
   }

   widgets_moving = 0;
}
