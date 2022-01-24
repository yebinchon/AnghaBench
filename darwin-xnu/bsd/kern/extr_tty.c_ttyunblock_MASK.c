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
struct tty {scalar_t__* t_cc; int /*<<< orphan*/  t_state; int /*<<< orphan*/  t_outq; int /*<<< orphan*/  t_iflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXOFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_TBLOCK ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 size_t VSTART ; 
 scalar_t__ _POSIX_VDISABLE ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 

__attribute__((used)) static void
FUNC6(struct tty *tp)
{
	FUNC3(tp);	/* debug assert */

	FUNC0(tp->t_state, TS_TBLOCK);
	if (FUNC1(tp->t_iflag, IXOFF) && tp->t_cc[VSTART] != _POSIX_VDISABLE &&
	    FUNC4(tp->t_cc[VSTART], &tp->t_outq) != 0)
		FUNC2(tp->t_state, TS_TBLOCK);	/* try again later */
	FUNC5(tp);
}