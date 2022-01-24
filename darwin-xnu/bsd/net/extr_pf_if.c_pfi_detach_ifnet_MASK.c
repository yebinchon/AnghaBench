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
struct pfi_kif {int /*<<< orphan*/ * pfik_ifp; } ;
struct ifnet {int /*<<< orphan*/ * if_pf_kif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PFI_KIF_REF_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC3 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfi_kif*) ; 
 int /*<<< orphan*/  pfi_update ; 

void
FUNC5(struct ifnet *ifp)
{
	struct pfi_kif		*kif;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	if ((kif = (struct pfi_kif *)ifp->if_pf_kif) == NULL)
		return;

	pfi_update++;
	FUNC4(kif);

	FUNC2(ifp);
	kif->pfik_ifp = NULL;
	ifp->if_pf_kif = NULL;
	FUNC1(ifp);

	FUNC3(kif, PFI_KIF_REF_NONE);
}