#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hooks; } ;
typedef  TYPE_1__ chassis_shutdown_hooks_t ;
struct TYPE_7__ {scalar_t__ is_called; int /*<<< orphan*/  udata; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ chassis_shutdown_hook_t ;
typedef  int /*<<< orphan*/  GString ;
typedef  int /*<<< orphan*/  GHashTableIter ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(chassis_shutdown_hooks_t *hooks) {
	GHashTableIter iter;
	GString *key;
	chassis_shutdown_hook_t *hook;

	FUNC0(hooks);
	FUNC2(&iter, hooks->hooks);
	while (FUNC3(&iter, (void **)&key, (void **)&hook)) {
		if (hook->func && !hook->is_called) hook->func(hook->udata);
		hook->is_called = TRUE;
	}
	FUNC1(hooks);
}