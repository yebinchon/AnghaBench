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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint32_t ;
struct mptses {scalar_t__ mpte_associd; } ;

/* Variables and functions */
 scalar_t__ SAE_ASSOCID_ANY ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mptses*) ; 

__attribute__((used)) static int
FUNC2(struct mptses *mpte, uint32_t *cnt, user_addr_t aidp)
{
	FUNC1(mpte);	/* same as MP socket lock */

	/* MPTCP has at most 1 association */
	*cnt = (mpte->mpte_associd != SAE_ASSOCID_ANY) ? 1 : 0;

	/* just asking how many there are? */
	if (aidp == USER_ADDR_NULL)
		return (0);

	return (FUNC0(&mpte->mpte_associd, aidp,
	    sizeof (mpte->mpte_associd)));
}