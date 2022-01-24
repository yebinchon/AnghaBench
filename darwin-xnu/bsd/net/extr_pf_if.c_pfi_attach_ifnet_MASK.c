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
struct pfi_kif {struct ifnet* pfik_ifp; } ;
struct ifnet {struct pfi_kif* if_pf_kif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pf_lock ; 
 struct pfi_kif* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pfi_kif*) ; 
 int /*<<< orphan*/  pfi_update ; 

void
FUNC7(struct ifnet *ifp)
{
	struct pfi_kif *kif;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	pfi_update++;
	if ((kif = FUNC5(FUNC1(ifp))) == NULL)
		FUNC4("pfi_kif_get failed");

	FUNC3(ifp);
	kif->pfik_ifp = ifp;
	ifp->if_pf_kif = kif;
	FUNC2(ifp);

	FUNC6(kif);
}