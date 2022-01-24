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
struct pfi_kif {scalar_t__ pfik_states; scalar_t__ pfik_rules; int /*<<< orphan*/ * pfik_ifp; } ;
typedef  enum pfi_kif_refs { ____Placeholder_pfi_kif_refs } pfi_kif_refs ;

/* Variables and functions */
#define  PFI_KIF_REF_NONE 130 
#define  PFI_KIF_REF_RULE 129 
#define  PFI_KIF_REF_STATE 128 
 int /*<<< orphan*/  PFI_MTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct pfi_kif* pfi_all ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 int /*<<< orphan*/  pfi_ifs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct pfi_kif *kif, enum pfi_kif_refs what)
{
	if (kif == NULL)
		return;

	switch (what) {
	case PFI_KIF_REF_NONE:
		break;
	case PFI_KIF_REF_RULE:
		if (kif->pfik_rules <= 0) {
			FUNC3("pfi_kif_unref: rules refcount <= 0\n");
			return;
		}
		kif->pfik_rules--;
		break;
	case PFI_KIF_REF_STATE:
		if (kif->pfik_states <= 0) {
			FUNC3("pfi_kif_unref: state refcount <= 0\n");
			return;
		}
		kif->pfik_states--;
		break;
	default:
		FUNC2("pfi_kif_unref with unknown type");
	}

	if (kif->pfik_ifp != NULL || kif == pfi_all)
		return;

	if (kif->pfik_rules || kif->pfik_states)
		return;

	FUNC0(pfi_ifhead, &pfi_ifs, kif);
	FUNC1(kif, PFI_MTYPE);
}