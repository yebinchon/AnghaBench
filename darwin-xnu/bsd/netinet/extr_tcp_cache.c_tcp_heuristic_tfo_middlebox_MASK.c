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
struct tcpcb {int /*<<< orphan*/  t_tfo_flags; } ;
struct tcp_cache_key_src {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TFO_F_HEURISTIC_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,struct tcp_cache_key_src*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_cache_key_src*) ; 

void FUNC2(struct tcpcb *tp)
{
	struct tcp_cache_key_src tcks;

	tp->t_tfo_flags |= TFO_F_HEURISTIC_DONE;

	FUNC0(tp, &tcks);
	FUNC1(&tcks);
}