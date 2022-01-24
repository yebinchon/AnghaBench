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
struct TYPE_4__ {int /*<<< orphan*/  title; int /*<<< orphan*/  callback; int /*<<< orphan*/  handler; int /*<<< orphan*/ * state; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ retro_task_t ;
typedef  int /*<<< orphan*/  retro_task_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_SCANNING_WIRELESS_NETWORKS ; 
 int /*<<< orphan*/  TASK_TYPE_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  task_wifi_scan_handler ; 

bool FUNC4(retro_task_callback_t cb)
{
   retro_task_t   *task = FUNC2();

   if (!task)
      return false;

   /* blocking means no other task can run while this one is running,
    * which is the default */
   task->type           = TASK_TYPE_BLOCKING;
   task->state          = NULL;
   task->handler        = task_wifi_scan_handler;
   task->callback       = cb;
   task->title          = FUNC1(FUNC0(
                           MSG_SCANNING_WIRELESS_NETWORKS));

   FUNC3(task);

   return true;
}