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
struct pf_pooladdr {int /*<<< orphan*/  kif; int /*<<< orphan*/  addr; } ;
struct pf_palist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFI_KIF_REF_RULE ; 
 struct pf_pooladdr* FUNC0 (struct pf_palist*) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_palist*,struct pf_pooladdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  pf_pooladdr_pl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pf_pooladdr*) ; 

__attribute__((used)) static void
FUNC6(struct pf_palist *poola)
{
	struct pf_pooladdr	*empty_pool_pa;

	while ((empty_pool_pa = FUNC0(poola)) != NULL) {
		FUNC3(&empty_pool_pa->addr);
		FUNC2(&empty_pool_pa->addr);
		FUNC4(empty_pool_pa->kif, PFI_KIF_REF_RULE);
		FUNC1(poola, empty_pool_pa, entries);
		FUNC5(&pf_pooladdr_pl, empty_pool_pa);
	}
}