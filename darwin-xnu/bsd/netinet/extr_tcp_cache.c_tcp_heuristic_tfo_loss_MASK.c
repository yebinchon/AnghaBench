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
typedef  int uint32_t ;
struct tcpcb {int t_tfo_stats; } ;
struct tcp_cache_key_src {int dummy; } ;

/* Variables and functions */
 int TCPCACHE_F_TFO_DATA ; 
 int TCPCACHE_F_TFO_REQ ; 
 int TFO_S_COOKIE_REQ ; 
 int TFO_S_SYN_DATA_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,struct tcp_cache_key_src*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_cache_key_src*,int) ; 

void FUNC2(struct tcpcb *tp)
{
	struct tcp_cache_key_src tcks;
	uint32_t flag = 0;

	FUNC0(tp, &tcks);

	if (tp->t_tfo_stats & TFO_S_SYN_DATA_SENT)
		flag = (TCPCACHE_F_TFO_DATA | TCPCACHE_F_TFO_REQ);
	if (tp->t_tfo_stats & TFO_S_COOKIE_REQ)
		flag = TCPCACHE_F_TFO_REQ;

	FUNC1(&tcks, flag);
}