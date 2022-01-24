#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ msg; int /*<<< orphan*/  expiration_timer; scalar_t__ expiration_timer_started; int /*<<< orphan*/  hourglass_timer; TYPE_1__* task_ptr; int /*<<< orphan*/  task_cancelled; int /*<<< orphan*/  task_error; int /*<<< orphan*/  task_finished; } ;
typedef  TYPE_2__ menu_widget_msg_t ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_8__ {int size; int /*<<< orphan*/ * list; } ;
struct TYPE_6__ {int /*<<< orphan*/ * frontend_userdata; } ;

/* Variables and functions */
 TYPE_4__* current_msgs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t msg_queue_kill ; 
 int /*<<< orphan*/  msg_queue_tasks_count ; 
 int widgets_moving ; 

__attribute__((used)) static void FUNC4(menu_widget_msg_t *msg, bool touch_list)
{
   size_t i;
   menu_animation_ctx_tag tag = (uintptr_t) msg;

   if (msg->task_ptr)
   {
      /* remove the reference the task has of ourself
         only if the task is not finished already
         (finished tasks are freed before the widget) */
      if (!msg->task_finished && !msg->task_error && !msg->task_cancelled)
         msg->task_ptr->frontend_userdata = NULL;

      /* update tasks count */
      msg_queue_tasks_count--;
   }

   /* Kill all animations */
   FUNC3(&msg->hourglass_timer);
   FUNC2(&tag);

   /* Kill all timers */
   if (msg->expiration_timer_started)
      FUNC3(&msg->expiration_timer);

   /* Free it */
   if (msg->msg)
      FUNC1(msg->msg);

   /* Remove it from the list */
   if (touch_list)
   {
      FUNC0(current_msgs, msg_queue_kill);

      for (i = msg_queue_kill; i < current_msgs->size-1; i++)
         current_msgs->list[i] = current_msgs->list[i+1];

      current_msgs->size--;
   }

   widgets_moving = false;
}