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
typedef  int u_int8_t ;
struct TYPE_6__ {int lro_elapsed; } ;
struct mbuf {TYPE_3__ m_pkthdr; } ;
struct lro_flow {int lr_len; int lr_timestamp; TYPE_2__* lr_mhead; } ;
struct TYPE_4__ {int lro_npkts; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int TCP_LRO_NUM_FLOWS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lro_flow* lro_flow_list ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int lrodebug ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int) ; 
 struct mbuf* FUNC6 (int) ; 
 int /*<<< orphan*/  tcp_lro_lock ; 
 int tcp_now ; 

__attribute__((used)) static void
FUNC7(void)
{
	int i = 0;
	struct mbuf *mb;
	struct lro_flow *flow;
	int tcpclock_updated = 0;

	FUNC1(&tcp_lro_lock);

	while (i < TCP_LRO_NUM_FLOWS) {
		flow = &lro_flow_list[i];
		if (flow->lr_mhead != NULL) {
			
			if (!tcpclock_updated) {
				FUNC0();
				tcpclock_updated = 1;
			}

			if (lrodebug >= 2) 
				FUNC5("tcp_lro_flush_flows: len =%d n_pkts = %d %d %d \n",
					flow->lr_len, 
					flow->lr_mhead->m_pkthdr.lro_npkts, 
					flow->lr_timestamp, tcp_now);

			u_int8_t timestamp = tcp_now - flow->lr_timestamp;

			mb = FUNC6(i);

			if (mb) {
				mb->m_pkthdr.lro_elapsed = timestamp;
				FUNC2(&tcp_lro_lock);
				FUNC4(mb);
				FUNC3(mb);
				FUNC1(&tcp_lro_lock);
			}
		}
		i++;
	}
	FUNC2(&tcp_lro_lock);
}