#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct uthread {int uu_sigmask; } ;
struct uio {int dummy; } ;
struct TYPE_7__ {int c_cc; } ;
struct tty {int t_hiwat; int t_column; int t_outcc; int /*<<< orphan*/  t_timeout; int /*<<< orphan*/  t_state; TYPE_5__ t_outq; int /*<<< orphan*/  t_lflag; scalar_t__ t_rocount; int /*<<< orphan*/  t_oflag; } ;
struct pgrp {scalar_t__ pg_jobc; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_6__ {int p_lflag; int p_sigignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCLASSMASK ; 
 int EINTR ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FLUSHO ; 
 int IO_NDELAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int) ; 
 int OBUFSIZ ; 
 int /*<<< orphan*/  OPOST ; 
 int PCATCH ; 
 struct pgrp* PGRP_NULL ; 
 int P_LPPWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  TOSTOP ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  TS_CONNECTED ; 
 int /*<<< orphan*/  TS_SO_OLOWAT ; 
 int /*<<< orphan*/  TS_ZOMBIE ; 
 int TTIPRI ; 
 int TTOPRI ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int /*<<< orphan*/  char_type ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,struct tty*) ; 
 int /*<<< orphan*/  FUNC11 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC12 (struct pgrp*,int /*<<< orphan*/ ,int) ; 
 struct pgrp* FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int tk_nout ; 
 int /*<<< orphan*/  FUNC16 (struct tty*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty*) ; 
 int /*<<< orphan*/  FUNC18 (struct tty*) ; 
 scalar_t__ FUNC19 (char,struct tty*) ; 
 int FUNC20 (struct tty*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct uio*) ; 
 int /*<<< orphan*/  FUNC22 (struct uio*,scalar_t__) ; 
 int FUNC23 (char*,int,struct uio*) ; 

int
FUNC24(struct tty *tp, struct uio *uio, int flag)
{
	char *cp = NULL;
	int cc, ce;
	proc_t p;
	int i, hiwat, error;
	user_ssize_t count;
	char obuf[OBUFSIZ];
	struct uthread *ut;
	struct pgrp * pg;

	FUNC5(tp);	/* debug assert */

	ut = (struct uthread *)FUNC9(FUNC8());
	hiwat = tp->t_hiwat;
	count = FUNC21(uio);
	error = 0;
	cc = 0;
loop:
	if (FUNC0(tp->t_state, TS_ZOMBIE)) {
		if (FUNC21(uio) == count)
			error = EIO;
		goto out;
	}
	if (!FUNC0(tp->t_state, TS_CONNECTED)) {
		if (flag & IO_NDELAY) {
			error = EWOULDBLOCK;
			goto out;
		}
		error = FUNC20(tp, FUNC3(tp), TTIPRI | PCATCH,
				 "ttydcd", 0);
		if (error) {
			goto out; }
		goto loop;
	}
	/*
	 * Signal the process if it's in the background.
	 */
	p = FUNC7();
	if (FUNC10(p, tp) &&
	    FUNC0(tp->t_lflag, TOSTOP) && (p->p_lflag & P_LPPWAIT) == 0 &&
	    (p->p_sigignore & FUNC15(SIGTTOU)) == 0 &&
	    (ut->uu_sigmask & FUNC15(SIGTTOU)) == 0) {

		pg = FUNC13(p);
		if (pg == PGRP_NULL) {
			error = EIO;
			goto out;
		}
		if (pg->pg_jobc == 0) {
			/* SAFE: All callers drop the lock on return */
			FUNC18(tp);
			FUNC11(pg);
			FUNC17(tp);
			error = EIO;
			goto out;
		}
		/* SAFE: All callers drop the lock on return */
		FUNC18(tp);
		FUNC12(pg, SIGTTOU, 1);
		FUNC11(pg);
		FUNC17(tp);
		/*
		 * We signalled ourself, so we need to act as if we
		 * have been "interrupted" from a "sleep" to act on
		 * the signal.  If it's a signal that stops the
		 * process, that's handled in the signal sending code.
		 */
		error = EINTR;
			goto out;
	}
	/*
	 * Process the user's data in at most OBUFSIZ chunks.  Perform any
	 * output translation.  Keep track of high water mark, sleep on
	 * overflow awaiting device aid in acquiring new space.
	 */
	while (FUNC21(uio) > 0 || cc > 0) {
		if (FUNC0(tp->t_lflag, FLUSHO)) {
			FUNC22(uio, 0);
			return (0);
		}
		if (tp->t_outq.c_cc > hiwat)
			goto ovhiwat;
		/*
		 * Grab a hunk of data from the user, unless we have some
		 * leftover from last time.
		 */
		if (cc == 0) {
			cc = FUNC1(FUNC21(uio), OBUFSIZ);
			cp = obuf;
			error = FUNC23(cp, cc, uio);
			if (error) {
				cc = 0;
				break;
			}
		}
		/*
		 * If nothing fancy need be done, grab those characters we
		 * can handle without any of ttyoutput's processing and
		 * just transfer them to the output q.  For those chars
		 * which require special processing (as indicated by the
		 * bits in char_type), call ttyoutput.  After processing
		 * a hunk of data, look for FLUSHO so ^O's will take effect
		 * immediately.
		 */
		while (cc > 0) {
			if (!FUNC0(tp->t_oflag, OPOST))
				ce = cc;
			else {
				ce = cc - FUNC14((u_int)cc, (u_char *)cp,
						char_type, CCLASSMASK);
				/*
				 * If ce is zero, then we're processing
				 * a special character through ttyoutput.
				 */
				if (ce == 0) {
					tp->t_rocount = 0;
					if (FUNC19(*cp, tp) >= 0) {
						/* out of space */
						goto overfull;
					}
					cp++;
					cc--;
					if (FUNC0(tp->t_lflag, FLUSHO) ||
					    tp->t_outq.c_cc > hiwat)
						goto ovhiwat;
					continue;
				}
			}
			/*
			 * A bunch of normal characters have been found.
			 * Transfer them en masse to the output queue and
			 * continue processing at the top of the loop.
			 * If there are any further characters in this
			 * <= OBUFSIZ chunk, the first should be a character
			 * requiring special handling by ttyoutput.
			 */
			tp->t_rocount = 0;
			i = FUNC6((u_char *)cp, ce, &tp->t_outq);
			ce -= i;
			tp->t_column += ce;
			cp += ce;
			cc -= ce;
			tk_nout += ce;
			tp->t_outcc += ce;
			if (i > 0) {
				/* out of space */
				goto overfull;
			}
			if (FUNC0(tp->t_lflag, FLUSHO) ||
			    tp->t_outq.c_cc > hiwat)
				break;
		}
		FUNC16(tp);
	}
out:
	/*
	 * If cc is nonzero, we leave the uio structure inconsistent, as the
	 * offset and iov pointers have moved forward, but it doesn't matter
	 * (the call will either return short or restart with a new uio).
	 */
	FUNC22(uio, (FUNC21(uio) + cc));
	return (error);

overfull:

	/*
	 * Since we are using ring buffers, if we can't insert any more into
	 * the output queue, we can assume the ring is full and that someone
	 * forgot to set the high water mark correctly.  We set it and then
	 * proceed as normal.
	 */
	hiwat = tp->t_outq.c_cc - 1;

ovhiwat:
	FUNC16(tp);
	/*
	 * This can only occur if FLUSHO is set in t_lflag,
	 * or if ttstart/oproc is synchronous (or very fast).
	 */
	if (tp->t_outq.c_cc <= hiwat) {
		goto loop;
	}
	if (flag & IO_NDELAY) {
		FUNC22(uio, (FUNC21(uio) + cc));
		return (FUNC21(uio) == count ? EWOULDBLOCK : 0);
	}
	FUNC2(tp->t_state, TS_SO_OLOWAT);
	error = FUNC20(tp, FUNC4(tp), TTOPRI | PCATCH, "ttywri",
			 tp->t_timeout);
	if (error == EWOULDBLOCK)
		error = EIO;
	if (error)
		goto out;
	goto loop;
}