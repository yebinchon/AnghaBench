#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  p_dtrace_sprlock; int /*<<< orphan*/  p_mlock; } ;
typedef  TYPE_1__ proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FASTTRAP_OBJC_NAME ; 
 int /*<<< orphan*/  FASTTRAP_ONESHOT_NAME ; 
 int /*<<< orphan*/  FASTTRAP_PID_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(proc_t *p)
{
	FUNC0(p == FUNC2());
	FUNC1(&p->p_mlock, LCK_MTX_ASSERT_OWNED);
	FUNC1(&p->p_dtrace_sprlock, LCK_MTX_ASSERT_NOTOWNED);


	/* APPLE NOTE: Okay, the locking here is really odd and needs some
	 * explaining. This method is always called with the proc_lock held.
	 * We must drop the proc_lock before calling fasttrap_provider_retire
	 * to avoid a deadlock when it takes the bucket lock.
	 * 
	 * Next, the dtrace_ptss_exec_exit function requires the sprlock
	 * be held, but not the proc_lock. 
	 *
	 * Finally, we must re-acquire the proc_lock
	 */
	FUNC8(p);

	/*
	 * We clean up the pid provider for this process here; user-land
	 * static probes are handled by the meta-provider remove entry point.
	 */
	FUNC4(p, FASTTRAP_PID_NAME, 0);

	/*
	 * APPLE NOTE: We also need to remove any aliased providers.
	 * XXX optimization: track which provider types are instantiated
	 * and only retire as needed.
	 */
	FUNC4(p, FASTTRAP_OBJC_NAME, 0);
	FUNC4(p, FASTTRAP_ONESHOT_NAME, 0);

	/*
	 * This should be called after it is no longer possible for a user
	 * thread to execute (potentially dtrace instrumented) instructions.
	 */
	FUNC5(&p->p_dtrace_sprlock);
	FUNC3(p);
	FUNC6(&p->p_dtrace_sprlock);

	FUNC7(p);
}