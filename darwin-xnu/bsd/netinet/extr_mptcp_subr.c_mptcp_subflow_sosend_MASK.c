#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct socket {int so_flags; int so_state; scalar_t__ last_pid; TYPE_6__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {TYPE_3__* p_stats; } ;
struct TYPE_11__ {int len; int pkt_flags; } ;
struct mbuf {TYPE_4__ m_pkthdr; } ;
struct inpcb {TYPE_1__* inp_last_outifp; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_14__ {int /*<<< orphan*/  mpt_mpte; } ;
struct TYPE_13__ {TYPE_5__* pr_usrreqs; } ;
struct TYPE_12__ {int (* pru_send ) (struct socket*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct proc*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  ru_msgsnd; } ;
struct TYPE_10__ {TYPE_2__ p_ru; } ;
struct TYPE_8__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  DBG_FUNC_END ; 
 int /*<<< orphan*/  DBG_FUNC_START ; 
 scalar_t__ ENTR_SHOULDTRACE ; 
 int EWOULDBLOCK ; 
 scalar_t__ FALSE ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PKTF_MPTCP ; 
 struct proc* PROC_NULL ; 
 scalar_t__ FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int SOF_CONTENT_FILTER ; 
 int SS_NBIO ; 
 scalar_t__ TRUE ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 struct proc* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kEnTrActKernSockWrite ; 
 int /*<<< orphan*/  kEnTrFlagNoWork ; 
 int /*<<< orphan*/  kEnTrFlagNonBlocking ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct socket*) ; 
 struct socket* FUNC9 (int /*<<< orphan*/ ) ; 
 struct proc* FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (struct proc*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*) ; 
 int /*<<< orphan*/  FUNC13 (struct socket*) ; 
 int FUNC14 (struct socket*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 struct inpcb* FUNC15 (struct socket*) ; 
 int /*<<< orphan*/  FUNC16 (struct socket*) ; 
 int FUNC17 (struct socket*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct proc*) ; 
 TYPE_7__* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct socket *so, struct sockaddr *addr, struct uio *uio,
    struct mbuf *top, struct mbuf *control, int flags)
{
	struct socket *mp_so = FUNC9(FUNC18(FUNC16(so))->mpt_mpte);
	struct proc *p = FUNC5();
	boolean_t en_tracing = FALSE, proc_held = FALSE;
	int en_tracing_val;
	int sblocked = 1; /* Pretend as if it is already locked, so we won't relock it */
	int error;

	FUNC3(control == NULL);
	FUNC3(addr == NULL);
	FUNC3(uio == NULL);
	FUNC3(flags == 0);
	FUNC3((so->so_flags & SOF_CONTENT_FILTER) == 0);

	FUNC3(top->m_pkthdr.len > 0 && top->m_pkthdr.len <= UINT16_MAX);
	FUNC3(top->m_pkthdr.pkt_flags & PKTF_MPTCP);

	/*
	 * trace if tracing & network (vs. unix) sockets & and
	 * non-loopback
	 */
	if (ENTR_SHOULDTRACE &&
	    (FUNC2(so, AF_INET) || FUNC2(so, AF_INET6))) {
		struct inpcb *inp = FUNC15(so);
		if (inp->inp_last_outifp != NULL &&
		    !(inp->inp_last_outifp->if_flags & IFF_LOOPBACK)) {
			en_tracing = TRUE;
			en_tracing_val = top->m_pkthdr.len;
			FUNC0(kEnTrActKernSockWrite, DBG_FUNC_START,
			    FUNC4(so),
			    ((so->so_state & SS_NBIO) ? kEnTrFlagNonBlocking : 0),
			    (int64_t)en_tracing_val);
		}
	}

	FUNC8(so, mp_so);

	if (mp_so->last_pid != FUNC11(p)) {
		p = FUNC10(mp_so->last_pid);
		if (p == PROC_NULL) {
			p = FUNC5();
		} else {
			proc_held = TRUE;
		}
	}

#if NECP
	inp_update_necp_policy(sotoinpcb(so), NULL, NULL, 0);
#endif /* NECP */

	FUNC1(&p->p_stats->p_ru.ru_msgsnd);

	error = FUNC14(so, NULL, top->m_pkthdr.len, 0, 1, 0, &sblocked, NULL);
	if (error)
		goto out;

	error = (*so->so_proto->pr_usrreqs->pru_send)(so, 0, top, NULL, NULL, p);
	top = NULL;

out:
	if (top != NULL)
		FUNC7(top);

	if (proc_held)
		FUNC12(p);

	FUNC13(so);

	if (en_tracing) {
		FUNC0(kEnTrActKernSockWrite, DBG_FUNC_END,
		    FUNC4(so),
		    ((error == EWOULDBLOCK) ? kEnTrFlagNoWork : 0),
		    (int64_t)en_tracing_val);
	}

	return (error);

}