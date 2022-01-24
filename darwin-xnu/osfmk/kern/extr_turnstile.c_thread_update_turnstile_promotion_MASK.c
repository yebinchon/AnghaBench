#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct turnstile {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int TSU_BOOST_ARG ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_TURNSTILE_ARG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,struct turnstile*) ; 

__attribute__((used)) static boolean_t
FUNC6(
	thread_t thread,
	struct turnstile *turnstile)
{
	/* Before grabbing the thread lock, check if update is needed */
	boolean_t needs_update = FUNC2(thread, turnstile);

	if (!needs_update) {
		FUNC5(1, TSU_NO_PRI_CHANGE_NEEDED |
			TSU_TURNSTILE_ARG | TSU_BOOST_ARG, turnstile);
		return needs_update;
	}

	/* Update the pairing heap */
	FUNC1(thread);
	needs_update = FUNC4(thread, turnstile);

	/* Update turnstile stats */
	if (!needs_update) {
		FUNC5(1,
			FUNC0(thread) |
			TSU_TURNSTILE_ARG | TSU_BOOST_ARG,
			turnstile);
	}
	FUNC3(thread);
	return needs_update;
}