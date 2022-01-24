#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfsmount {TYPE_1__* nm_funcs; } ;
struct nfs_sillyrename {int /*<<< orphan*/  nsr_cred; int /*<<< orphan*/  nsr_namlen; int /*<<< orphan*/  nsr_name; int /*<<< orphan*/  nsr_dnp; } ;
struct TYPE_2__ {int (* nf_remove_rpc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENXIO ; 
 struct nfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfsmount*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct nfs_sillyrename *nsp)
{
	struct nfsmount *nmp = FUNC0(nsp->nsr_dnp);
	if (FUNC1(nmp))
		return (ENXIO);
	return nmp->nm_funcs->nf_remove_rpc(nsp->nsr_dnp, nsp->nsr_name, nsp->nsr_namlen, NULL, nsp->nsr_cred);
}