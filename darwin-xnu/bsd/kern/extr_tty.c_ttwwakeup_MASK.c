#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ c_cc; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct tty {scalar_t__ t_lowat; int /*<<< orphan*/  t_state; TYPE_1__ t_outq; TYPE_2__ t_wsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int TS_BUSY ; 
 int TS_SO_OCOMPLETE ; 
 int TS_SO_OLOWAT ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct tty *tp)
{
	FUNC5(tp);	/* debug assert */

	if (tp->t_outq.c_cc <= tp->t_lowat) {
		FUNC6(&tp->t_wsel);
		FUNC2(&tp->t_wsel.si_note, 1);
	}
	if (FUNC1(tp->t_state, TS_BUSY | TS_SO_OCOMPLETE) ==
	    TS_SO_OCOMPLETE && tp->t_outq.c_cc == 0) {
		FUNC0(tp->t_state, TS_SO_OCOMPLETE);
		FUNC7(FUNC3(tp));
	}
	if (FUNC1(tp->t_state, TS_SO_OLOWAT) &&
	    tp->t_outq.c_cc <= tp->t_lowat) {
		FUNC0(tp->t_state, TS_SO_OLOWAT);
		FUNC7(FUNC4(tp));
	}
}