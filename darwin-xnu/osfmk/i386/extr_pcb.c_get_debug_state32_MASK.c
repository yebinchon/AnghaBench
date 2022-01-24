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
typedef  int /*<<< orphan*/  x86_debug_state32_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_4__ {int /*<<< orphan*/ * ids; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(thread_t thread, x86_debug_state32_t *ds)
{
	x86_debug_state32_t *saved_state;

	saved_state = thread->machine.ids;

	if (saved_state) {
		FUNC1(saved_state, ds, TRUE);
	} else
		FUNC0(ds, sizeof *ds);
}