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
 unsigned int FUNC0 (struct tcp_cache_key_src*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*,struct tcp_cache_key_src*) ; 

unsigned int FUNC2(struct tcpcb *tp)
{
	struct tcp_cache_key_src tcks;

	FUNC1(tp, &tcks);
	return FUNC0(&tcks);
}