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
struct tty {int /*<<< orphan*/  t_state; TYPE_1__* t_session; int /*<<< orphan*/  t_cflag; } ;
struct TYPE_2__ {scalar_t__ s_leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FREAD ; 
 int FWRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDMBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  TS_CARR_ON ; 
 int /*<<< orphan*/  TS_CAR_OFLOW ; 
 int /*<<< orphan*/  TS_CONNECTED ; 
 int /*<<< orphan*/  TS_ISOPEN ; 
 int /*<<< orphan*/  TS_TTSTOP ; 
 int /*<<< orphan*/  TS_ZOMBIE ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12(struct tty *tp, int flag)
{
	int rval = 1;		/* default return value */

	FUNC4(tp);	/* debug assert */

	if (FUNC1(tp->t_state, TS_CARR_ON) && FUNC1(tp->t_cflag, MDMBUF)) {
		/*
		 * MDMBUF: do flow control according to carrier flag
		 * XXX TS_CAR_OFLOW doesn't do anything yet.  TS_TTSTOP
		 * works if IXON and IXANY are clear.
		 */
		if (flag) {
			FUNC0(tp->t_state, TS_CAR_OFLOW);
			FUNC0(tp->t_state, TS_TTSTOP);
			FUNC6(tp);
		} else if (!FUNC1(tp->t_state, TS_CAR_OFLOW)) {
			FUNC2(tp->t_state, TS_CAR_OFLOW);
			FUNC2(tp->t_state, TS_TTSTOP);
                        FUNC10(tp, 0);
		}
	} else if (flag == 0) {
		/*
		 * Lost carrier.
		 */
		FUNC0(tp->t_state, TS_CARR_ON);
		if (FUNC1(tp->t_state, TS_ISOPEN) &&
		    !FUNC1(tp->t_cflag, CLOCAL)) {
			FUNC2(tp->t_state, TS_ZOMBIE);
			FUNC0(tp->t_state, TS_CONNECTED);
			if (tp->t_session && tp->t_session->s_leader)
				FUNC5(tp->t_session->s_leader, SIGHUP);
			FUNC9(tp, FREAD | FWRITE);
			rval = 0;
			goto out;
		}
	} else {
		/*
		 * Carrier now on.
		 */
		FUNC2(tp->t_state, TS_CARR_ON);
		if (!FUNC1(tp->t_state, TS_ZOMBIE))
			FUNC2(tp->t_state, TS_CONNECTED);
		FUNC11(FUNC3(tp));
		FUNC7(tp);
		FUNC8(tp);
	}

out:
	return (rval);
}