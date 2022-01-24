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
struct uthread {int /*<<< orphan*/  uu_siglist; } ;
struct TYPE_2__ {int c_cc; } ;
struct tty {int t_hiwat; int /*<<< orphan*/  t_state; TYPE_1__ t_outq; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int OBUFSIZ ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  TS_SO_OLOWAT ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct tty *tp, int wait)
{
	int hiwat;
	sigset_t oldsig;
	struct uthread *ut;

	FUNC2(tp);	/* debug assert */

	ut = (struct uthread *)FUNC4(FUNC3());

	hiwat = tp->t_hiwat;
	oldsig = wait ? ut->uu_siglist : 0;
	if (tp->t_outq.c_cc > hiwat + OBUFSIZ + 100)
		while (tp->t_outq.c_cc > hiwat) {
			FUNC5(tp);
			if (tp->t_outq.c_cc <= hiwat)
				break;
			if (wait == 0 || ut->uu_siglist != oldsig) {
				return (0);
			}
			FUNC0(tp->t_state, TS_SO_OLOWAT);
			FUNC6(tp, FUNC1(tp), PZERO - 1, "ttoutq", hz);
		}
	return (1);
}