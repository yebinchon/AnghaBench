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
struct TYPE_2__ {int c_cc; } ;
struct tty {int t_state; int t_lowat; int t_hiwat; int /*<<< orphan*/  t_wsel; int /*<<< orphan*/  t_rsel; TYPE_1__ t_outq; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int ENXIO ; 
 int FMARK ; 
#define  FREAD 129 
#define  FWRITE 128 
 int TS_CONNECTED ; 
 int TS_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (struct tty*) ; 

int
FUNC3(struct tty *tp, int rw, void *wql, proc_t p)
{
	int retval = 0;
	/*
	 * Attaching knotes to TTYs needs to call selrecord in order to hook
	 * up the waitq to the selinfo, regardless of data being ready.  See
	 * filt_ttyattach.
	 */
	bool needs_selrecord = rw & FMARK;
	rw &= ~FMARK;

	if (tp == NULL) {
		return ENXIO;
	}

	FUNC0(tp);

	if (tp->t_state & TS_ZOMBIE) {
		retval = 1;
		goto out;
	}

	switch (rw) {
	case FREAD:
		retval = FUNC2(tp);
		if (retval > 0) {
			break;
		}

		FUNC1(p, &tp->t_rsel, wql);
		break;
	case FWRITE:
		if ((tp->t_outq.c_cc <= tp->t_lowat) &&
		    (tp->t_state & TS_CONNECTED)) {
			retval = tp->t_hiwat - tp->t_outq.c_cc;
			break;
		}

		FUNC1(p, &tp->t_wsel, wql);
		break;
	}

out:
	if (retval > 0 && needs_selrecord) {
		switch (rw) {
		case FREAD:
			FUNC1(p, &tp->t_rsel, wql);
			break;
		case FWRITE:
			FUNC1(p, &tp->t_wsel, wql);
			break;
		}
	}

	return retval;
}