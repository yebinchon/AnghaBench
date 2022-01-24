#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* dyn; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_1__ p; } ;
struct TYPE_7__ {int /*<<< orphan*/  pfik_dynaddrs; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pfid_kt; TYPE_3__* pfid_kif; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFI_KIF_REF_RULE ; 
 scalar_t__ PF_ADDR_DYNIFTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  pfi_addr_pl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void
FUNC4(struct pf_addr_wrap *aw)
{
	if (aw->type != PF_ADDR_DYNIFTL || aw->p.dyn == NULL ||
	    aw->p.dyn->pfid_kif == NULL || aw->p.dyn->pfid_kt == NULL)
		return;

	FUNC0(&aw->p.dyn->pfid_kif->pfik_dynaddrs, aw->p.dyn, entry);
	FUNC1(aw->p.dyn->pfid_kif, PFI_KIF_REF_RULE);
	aw->p.dyn->pfid_kif = NULL;
	FUNC2(aw->p.dyn->pfid_kt);
	aw->p.dyn->pfid_kt = NULL;
	FUNC3(&pfi_addr_pl, aw->p.dyn);
	aw->p.dyn = NULL;
}