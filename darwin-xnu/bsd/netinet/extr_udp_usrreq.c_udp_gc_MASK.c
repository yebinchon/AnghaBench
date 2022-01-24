#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ so_usecount; } ;
struct TYPE_5__ {int /*<<< orphan*/  intimer_fast; } ;
struct inpcbinfo {int /*<<< orphan*/  ipi_lock; TYPE_2__ ipi_gc_req; } ;
struct TYPE_4__ {struct inpcb* le_next; } ;
struct inpcb {scalar_t__ inp_wantcnt; scalar_t__ inp_state; struct socket* inp_socket; TYPE_1__ inp_list; } ;
struct TYPE_6__ {struct inpcb* lh_first; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ INPCB_STATE_DEAD ; 
 int /*<<< orphan*/  PF_INET6 ; 
 scalar_t__ FUNC0 (struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ WNT_STOPUSING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 TYPE_3__ udb ; 
 scalar_t__ udp_gc_done ; 

__attribute__((used)) static void
FUNC10(struct inpcbinfo *ipi)
{
	struct inpcb *inp, *inpnxt;
	struct socket *so;

	if (FUNC7(ipi->ipi_lock) == FALSE) {
		if (udp_gc_done == TRUE) {
			udp_gc_done = FALSE;
			/* couldn't get the lock, must lock next time */
			FUNC1(&ipi->ipi_gc_req.intimer_fast, 1);
			return;
		}
		FUNC6(ipi->ipi_lock);
	}

	udp_gc_done = TRUE;

	for (inp = udb.lh_first; inp != NULL; inp = inpnxt) {
		inpnxt = inp->inp_list.le_next;

		/*
		 * Skip unless it's STOPUSING; garbage collector will
		 * be triggered by in_pcb_checkstate() upon setting
		 * wantcnt to that value.  If the PCB is already dead,
		 * keep gc active to anticipate wantcnt changing.
		 */
		if (inp->inp_wantcnt != WNT_STOPUSING)
			continue;

		/*
		 * Skip if busy, no hurry for cleanup.  Keep gc active
		 * and try the lock again during next round.
		 */
		if (!FUNC8(inp->inp_socket)) {
			FUNC1(&ipi->ipi_gc_req.intimer_fast, 1);
			continue;
		}

		/*
		 * Keep gc active unless usecount is 0.
		 */
		so = inp->inp_socket;
		if (so->so_usecount == 0) {
			if (inp->inp_state != INPCB_STATE_DEAD) {
#if INET6
				if (SOCK_CHECK_DOM(so, PF_INET6))
					in6_pcbdetach(inp);
				else
#endif /* INET6 */
					FUNC3(inp);
			}
			FUNC4(inp);
		} else {
			FUNC9(so, 0);
			FUNC1(&ipi->ipi_gc_req.intimer_fast, 1);
		}
	}
	FUNC5(ipi->ipi_lock);
}