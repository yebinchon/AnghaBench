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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int /*<<< orphan*/  c_cc; } ;
struct tty {scalar_t__* t_cc; scalar_t__ t_rocol; TYPE_1__ t_rawq; int /*<<< orphan*/  t_rocount; int /*<<< orphan*/  t_state; TYPE_1__ t_canq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_ERASE ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 size_t VREPRINT ; 
 scalar_t__ _POSIX_VDISABLE ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (char,struct tty*) ; 

__attribute__((used)) static void
FUNC6(struct tty *tp)
{
	u_char *cp;
	int c;

	FUNC1(tp);	/* debug assert */

	/* Echo the reprint character. */
	if (tp->t_cc[VREPRINT] != _POSIX_VDISABLE)
		FUNC4(tp->t_cc[VREPRINT], tp);

	(void)FUNC5('\n', tp);

	/*
	 * FREEBSD XXX
	 * FIX: NEXTC IS BROKEN - DOESN'T CHECK QUOTE
	 * BIT OF FIRST CHAR.
	 */
	for (cp = FUNC2(&tp->t_canq, &c); cp; cp = FUNC3(&tp->t_canq, cp, &c))
		FUNC4(c, tp);
	for (cp = FUNC2(&tp->t_rawq, &c); cp; cp = FUNC3(&tp->t_rawq, cp, &c))
		FUNC4(c, tp);
	FUNC0(tp->t_state, TS_ERASE);

	tp->t_rocount = tp->t_rawq.c_cc;
	tp->t_rocol = 0;
}