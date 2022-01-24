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
struct tty {int /*<<< orphan*/  t_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  TS_PGRPHUP ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct tty *tp)
{
	FUNC2(tp);     /* debug assert */
	FUNC0(tp->t_state, TS_PGRPHUP);
	/*
	 * Also wake up sleeping readers which may or may not belong to the
	 * current foreground process group.
	 *
	 * This forces any non-fg readers (which entered read when
	 * that process group was in the fg) to return with EIO (if they're
	 * catching SIGTTIN or with SIGTTIN). The ones which do belong to the fg
	 * process group will promptly go back to sleep and get a SIGHUP shortly
	 * This would normally happen as part of the close in revoke but if
	 * there is a sleeping reader from a non-fg process group we never get
	 * to the close because the sleeping reader holds an iocount on the
	 * vnode of the terminal which is going to get revoked->reclaimed.
	 */
	FUNC3(FUNC1(tp));
}