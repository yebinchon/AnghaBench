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
struct ip6_pktopts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip6_pktopts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IP6OPT ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_pktopts*,int) ; 

void
FUNC2(struct ip6_pktopts *pktopt)
{
	if (pktopt == NULL)
		return;

	FUNC1(pktopt, -1);

	FUNC0(pktopt, M_IP6OPT);
}