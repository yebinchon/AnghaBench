#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ handler; scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
struct TYPE_5__ {int /*<<< orphan*/  playlist_path; } ;
typedef  TYPE_2__ pl_manager_handle_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ task_pl_manager_reset_cores_handler ; 

__attribute__((used)) static bool FUNC1(retro_task_t *task, void *user_data)
{
   pl_manager_handle_t *pl_manager = NULL;
   
   if (!task || !user_data)
      return false;
   
   if (task->handler != task_pl_manager_reset_cores_handler)
      return false;
   
   pl_manager = (pl_manager_handle_t*)task->state;
   if (!pl_manager)
      return false;
   
   return FUNC0((const char*)user_data, pl_manager->playlist_path);
}