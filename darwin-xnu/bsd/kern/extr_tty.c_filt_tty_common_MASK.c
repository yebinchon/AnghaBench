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
struct tty {int t_state; int t_lowat; int t_hiwat; TYPE_1__ t_outq; } ;
struct knote {int kn_data; int /*<<< orphan*/  kn_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_EOF ; 
#define  FREAD 129 
#define  FWRITE 128 
 int TS_CONNECTED ; 
 int TS_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int FUNC1 (struct knote*) ; 
 int FUNC2 (struct tty*) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, struct tty *tp)
{
	int retval = 0;

	FUNC0(tp); /* debug assert */

	if (tp->t_state & TS_ZOMBIE) {
		kn->kn_flags |= EV_EOF;
		return 1;
	}

	switch (FUNC1(kn)) {
	case FREAD:
		retval = FUNC2(tp);
		break;
	case FWRITE:
		if ((tp->t_outq.c_cc <= tp->t_lowat) &&
		    (tp->t_state & TS_CONNECTED)) {
			retval = tp->t_hiwat - tp->t_outq.c_cc;
		}
		break;
	}

	kn->kn_data = retval;

	/*
	 * TODO(mwidmann, jandrus): For native knote low watermark support,
	 * check the kn_sfflags for NOTE_LOWAT and check against kn_sdata.
	 *
	 * res = ((kn->kn_sfflags & NOTE_LOWAT) != 0) ?
	 *        (kn->kn_data >= kn->kn_sdata) : kn->kn_data;
	 */

	return retval;
}