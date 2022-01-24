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
struct TYPE_3__ {int sb_flags; } ;
struct socket {int so_state; int so_flags1; TYPE_1__ so_snd; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mptses {int dummy; } ;
struct mppcb {scalar_t__ mpp_state; } ;
struct mbuf {scalar_t__ m_len; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int EWOULDBLOCK ; 
 scalar_t__ MPPCB_STATE_DEAD ; 
 int PRUS_EOF ; 
 int PRUS_OOB ; 
 int SB_NOCOMPRESS ; 
 int SOF1_PRECONNECT_DATA ; 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int SS_NBIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct mppcb* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct mppcb*,struct mbuf*) ; 
 int FUNC4 (struct mptses*) ; 
 struct mptses* FUNC5 (struct mppcb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct mbuf*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(struct socket *mp_so, int prus_flags, struct mbuf *m,
    struct sockaddr *nam, struct mbuf *control, struct proc *p)
{
#pragma unused(nam, p)
	struct mppcb *mpp = FUNC2(mp_so);
	struct mptses *mpte;
	int error = 0;

	if (prus_flags & (PRUS_OOB|PRUS_EOF)) {
		error = EOPNOTSUPP;
		goto out;
	}

	if (nam != NULL) {
		error = EOPNOTSUPP;
		goto out;
	}

	if (control != NULL && control->m_len != 0) {
		error = EOPNOTSUPP;
		goto out;
	}

	if (mpp == NULL || mpp->mpp_state == MPPCB_STATE_DEAD) {
		error = ECONNRESET;
		goto out;
	}
	mpte = FUNC5(mpp);
	FUNC0(mpte != NULL);

	if (!(mp_so->so_state & SS_ISCONNECTED) &&
	    !(mp_so->so_flags1 & SOF1_PRECONNECT_DATA)) {
		error = ENOTCONN;
		goto out;
	}

	FUNC3(mpp, m);
	FUNC0(mp_so->so_snd.sb_flags & SB_NOCOMPRESS);
	FUNC6(&mp_so->so_snd, m);
	m = NULL;

	error = FUNC4(mpte);
	if (error != 0)
		goto out;

	if (mp_so->so_state & SS_ISCONNECTING) {
		if (mp_so->so_state & SS_NBIO)
			error = EWOULDBLOCK;
		else
			error = FUNC7(&mp_so->so_snd);
	}

out:
	if (error) {
		if (m != NULL)
			FUNC1(m);
		if (control != NULL)
			FUNC1(control);
	}
	return (error);
}