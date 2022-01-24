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
struct TYPE_4__ {scalar_t__ dtm_count; int /*<<< orphan*/  dtm_name; } ;
typedef  TYPE_1__ dtrace_meta_t ;
typedef  scalar_t__ dtrace_meta_provider_id_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_meta_lock ; 
 TYPE_1__* dtrace_meta_pid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 

int
FUNC5(dtrace_meta_provider_id_t id)
{
	dtrace_meta_t **pp, *old = (dtrace_meta_t *)id;

	FUNC2(&dtrace_meta_lock);
	FUNC2(&dtrace_lock);

	if (old == dtrace_meta_pid) {
		pp = &dtrace_meta_pid;
	} else {
		FUNC4("attempt to unregister non-existent "
		    "dtrace meta-provider %p\n", (void *)old);
	}

	if (old->dtm_count != 0) {
		FUNC3(&dtrace_lock);
		FUNC3(&dtrace_meta_lock);
		return (EBUSY);
	}

	*pp = NULL;

	FUNC0(old->dtm_name);

	FUNC3(&dtrace_lock);
	FUNC3(&dtrace_meta_lock);

	FUNC1(old, sizeof (dtrace_meta_t));

	return (0);
}