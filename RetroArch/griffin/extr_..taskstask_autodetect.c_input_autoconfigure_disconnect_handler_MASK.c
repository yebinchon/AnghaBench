#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
struct TYPE_11__ {struct TYPE_11__* msg; } ;
typedef  TYPE_2__ autoconfig_disconnect_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_AUTODETECT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(retro_task_t *task)
{
   autoconfig_disconnect_t *params = (autoconfig_disconnect_t*)task->state;

   FUNC6(task, FUNC3(params->msg));

   FUNC5(task, true);

   FUNC0("%s: %s\n", FUNC2(MSG_AUTODETECT), params->msg);

   if (!FUNC4(params->msg))
      FUNC1(params->msg);
   FUNC1(params);
}