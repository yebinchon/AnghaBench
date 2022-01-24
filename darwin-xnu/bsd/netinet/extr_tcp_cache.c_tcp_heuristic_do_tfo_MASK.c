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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,struct tcp_cache_key_src*) ; 
 scalar_t__ FUNC1 (struct tcp_cache_key_src*) ; 

boolean_t FUNC2(struct tcpcb *tp)
{
	struct tcp_cache_key_src tcks;

	FUNC0(tp, &tcks);
	if (FUNC1(&tcks))
		return (TRUE);

	return (FALSE);
}