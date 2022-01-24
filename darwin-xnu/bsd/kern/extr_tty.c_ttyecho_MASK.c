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
struct tty {int t_state; int t_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECHO ; 
 int /*<<< orphan*/  ECHOCTL ; 
 int /*<<< orphan*/  ECHONL ; 
 int /*<<< orphan*/  EXTPROC ; 
 int /*<<< orphan*/  FLUSHO ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_CNTTB ; 
 int /*<<< orphan*/  TTY_CHARMASK ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct tty*) ; 

__attribute__((used)) static void
FUNC4(int c, struct tty *tp)
{
	FUNC2(tp);	/* debug assert */

	if (!FUNC1(tp->t_state, TS_CNTTB))
		FUNC0(tp->t_lflag, FLUSHO);
	if ((!FUNC1(tp->t_lflag, ECHO) &&
	     (c != '\n' || !FUNC1(tp->t_lflag, ECHONL))) ||
	    FUNC1(tp->t_lflag, EXTPROC))
		return;
	if (FUNC1(tp->t_lflag, ECHOCTL) &&
	    ((FUNC1(c, TTY_CHARMASK) <= 037 && c != '\t' && c != '\n') ||
	    FUNC1(c, TTY_CHARMASK) == 0177)) {
		(void)FUNC3('^', tp);
		FUNC0(c, ~TTY_CHARMASK);
		if (c == 0177)
			c = '?';
		else
			c += 'A' - 1;
	}
	(void)FUNC3(c, tp);
}