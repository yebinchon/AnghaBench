#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  kperf_flags; int /*<<< orphan*/  kpc_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KPC_MAX_COUNTERS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  T_KPC_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ kpc_thread_classes ; 
 scalar_t__ kpc_thread_classes_count ; 
 int /*<<< orphan*/  kpc_thread_lock ; 
 int /*<<< orphan*/  kpc_threads_counting ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(uint32_t classes)
{
	uint32_t count;

	FUNC5(&kpc_thread_lock);

	count = FUNC3(classes);

	if( (classes == 0)
	    || (count == 0) )
	{
		/* shut down */
		kpc_threads_counting = FALSE;
	}
	else
	{
		/* stash the config */
		kpc_thread_classes = classes;

		/* work out the size */
		kpc_thread_classes_count = count;
		FUNC1(kpc_thread_classes_count <= KPC_MAX_COUNTERS);

		/* enable switch */
		kpc_threads_counting = TRUE;

		/* and schedule an AST for this thread... */
		if( !FUNC2()->kpc_buf )
		{
			FUNC2()->kperf_flags |= T_KPC_ALLOC;
			FUNC0(FUNC2());
		}
	}

    FUNC4();
	FUNC6(&kpc_thread_lock);

	return 0;
}