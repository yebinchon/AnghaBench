#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_UNSIGNED ;
struct TYPE_4__ {void (* orig_task_timer_expiration_routine ) (void*) ;int task_timer_created; int /*<<< orphan*/  task_timer; void* orig_task_timer_context; } ;
typedef  TYPE_1__ VCOS_THREAD_T ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  _task_timer_expiration_routine ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(void (*pfn)(void*), void *cxt, VCOS_UNSIGNED ms)
{
   VCOS_THREAD_T *thread = FUNC1();

   if (thread == NULL)
      return;

   FUNC0(thread->orig_task_timer_expiration_routine == NULL);

   if (!thread->task_timer_created)
   {
      VCOS_STATUS_T st = FUNC2(&thread->task_timer, NULL,
                                _task_timer_expiration_routine, thread);
      (void)st;
      FUNC0(st == VCOS_SUCCESS);
      thread->task_timer_created = 1;
   }

   thread->orig_task_timer_expiration_routine = pfn;
   thread->orig_task_timer_context = cxt;

   FUNC3(&thread->task_timer, ms);
}