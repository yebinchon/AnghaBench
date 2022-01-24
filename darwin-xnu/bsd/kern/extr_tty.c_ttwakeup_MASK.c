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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct tty {int /*<<< orphan*/  t_state; TYPE_1__ t_rsel; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  TS_ASYNC ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct tty *tp)
{
	FUNC3(tp);	/* debug assert */

	FUNC4(&tp->t_rsel);
	FUNC1(&tp->t_rsel.si_note, 1);
	if (FUNC0(tp->t_state, TS_ASYNC)) {
		/*
		 * XXX: Callers may not revalidate it the tty is closed
		 * XXX: out from under them by another thread, but we do
		 * XXX: not support queued signals.  This should be safe,
		 * XXX: since the process we intend to wakeup is in the
		 * XXX: process group, and will wake up because of the
		 * XXX: signal anyway.
		 */
		FUNC7(tp);
		FUNC6(tp, SIGIO, 1);
		FUNC5(tp);
	}
	FUNC8(FUNC2(tp));
}