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
struct pfi_kif {int dummy; } ;
struct ifnet {struct pfi_kif* if_pf_kif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pf_perim_lock ; 
 int /*<<< orphan*/  FUNC4 (struct pfi_kif*) ; 

int
FUNC5(struct ifnet *ifp)
{
	struct pfi_kif *kif = ifp->if_pf_kif;

	if (kif != NULL) {
		FUNC3(pf_perim_lock);
		FUNC0(pf_lock);

		FUNC4(kif);

		FUNC1(pf_lock);
		FUNC2(pf_perim_lock);
	}
	return (0);
}