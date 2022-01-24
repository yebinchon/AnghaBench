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
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct mbuf {int dummy; } ;
struct dlil_threading_info {scalar_t__ mode; int input_waiting; int /*<<< orphan*/  input_lck; scalar_t__ wtot; int /*<<< orphan*/  rcvq_pkts; int /*<<< orphan*/  input_name; int /*<<< orphan*/ * ifp; } ;
struct dlil_main_threading_info {int /*<<< orphan*/  lo_rcvq_pkts; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int DLIL_INPUT_RUNNING ; 
 int DLIL_INPUT_TERMINATE ; 
 int DLIL_INPUT_WAITING ; 
 int DLIL_PROTO_REGISTER ; 
 int DLIL_PROTO_WAITING ; 
 scalar_t__ IFNET_MODEL_INPUT_POLL_OFF ; 
 int PSPIN ; 
 int PZERO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dlil_threading_info* dlil_main_input_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lo_ifp ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) __attribute__((noreturn))
static void
FUNC8(void *v, wait_result_t w)
{
#pragma unused(w)
	struct dlil_main_threading_info *inpm = v;
	struct dlil_threading_info *inp = v;

	FUNC0(inp == dlil_main_input_thread);
	FUNC0(inp->ifp == NULL);
	FUNC0(inp->mode == IFNET_MODEL_INPUT_POLL_OFF);

	while (1) {
		struct mbuf *m = NULL, *m_loop = NULL;
		u_int32_t m_cnt, m_cnt_loop;
		boolean_t proto_req;

		FUNC3(&inp->input_lck);

		/* Wait until there is work to be done */
		while (!(inp->input_waiting & ~DLIL_INPUT_RUNNING)) {
			inp->input_waiting &= ~DLIL_INPUT_RUNNING;
			(void) FUNC5(&inp->input_waiting, &inp->input_lck,
			    (PZERO - 1) | PSPIN, inp->input_name, NULL);
		}

		inp->input_waiting |= DLIL_INPUT_RUNNING;
		inp->input_waiting &= ~DLIL_INPUT_WAITING;

		/* Main input thread cannot be terminated */
		FUNC0(!(inp->input_waiting & DLIL_INPUT_TERMINATE));

		proto_req = (inp->input_waiting &
		    (DLIL_PROTO_WAITING | DLIL_PROTO_REGISTER));

		/* Packets for non-dedicated interfaces other than lo0 */
		m_cnt = FUNC7(&inp->rcvq_pkts);
		m = FUNC1(&inp->rcvq_pkts, NULL, NULL, NULL);

		/* Packets exclusive to lo0 */
		m_cnt_loop = FUNC7(&inpm->lo_rcvq_pkts);
		m_loop = FUNC1(&inpm->lo_rcvq_pkts, NULL, NULL, NULL);

		inp->wtot = 0;

		FUNC4(&inp->input_lck);

		/*
		 * NOTE warning %%% attention !!!!
		 * We should think about putting some thread starvation
		 * safeguards if we deal with long chains of packets.
		 */
		if (m_loop != NULL)
			FUNC2(lo_ifp, m_loop,
			    m_cnt_loop, inp->mode);

		if (m != NULL)
			FUNC2(NULL, m,
			    m_cnt, inp->mode);

		if (proto_req)
			FUNC6();
	}

	/* NOTREACHED */
	FUNC0(0);	/* we should never get here */
}