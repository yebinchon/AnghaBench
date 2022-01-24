#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  since; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PF_DEBUG_MISC ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pf_is_enabled ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pf_purge_thread_fn ; 
 TYPE_1__ pf_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC1(pf_lock, LCK_MTX_ASSERT_OWNED);

	FUNC2(pf_is_enabled);

	pf_status.running = 0;
	pf_is_enabled = 0;
	pf_status.since = FUNC3();
	FUNC4(pf_purge_thread_fn);
	FUNC0(PF_DEBUG_MISC, ("pf: stopped\n"));
}