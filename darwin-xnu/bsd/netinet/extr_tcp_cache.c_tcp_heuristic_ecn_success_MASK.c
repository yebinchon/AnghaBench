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
struct tcpcb {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPCACHE_F_ECN ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,struct tcp_cache_key_src*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_cache_key_src*,int /*<<< orphan*/ ) ; 

void FUNC2(struct tcpcb *tp)
{
	struct tcp_cache_key_src tcks;

	FUNC0(tp, &tcks);
	FUNC1(&tcks, TCPCACHE_F_ECN);
}