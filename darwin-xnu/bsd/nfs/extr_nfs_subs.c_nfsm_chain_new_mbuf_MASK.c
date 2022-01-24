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
struct nfsm_chain {int nmc_flags; int /*<<< orphan*/  nmc_left; scalar_t__ nmc_ptr; int /*<<< orphan*/ * nmc_mcur; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int NFSM_CHAIN_FLAG_ADD_CLUSTERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t nfs_mbuf_minclsize ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(struct nfsm_chain *nmc, size_t sizehint)
{
	mbuf_t mb;
	int error = 0;

	if (nmc->nmc_flags & NFSM_CHAIN_FLAG_ADD_CLUSTERS)
		sizehint = nfs_mbuf_minclsize;

	/* allocate a new mbuf */
	FUNC5(error, &mb, sizehint);
	if (error)
		return (error);
	if (mb == NULL)
		FUNC6("got NULL mbuf?");

	/* do we have a current mbuf? */
	if (nmc->nmc_mcur) {
		/* first cap off current mbuf */
		FUNC2(nmc->nmc_mcur, nmc->nmc_ptr - (caddr_t)FUNC0(nmc->nmc_mcur));
		/* then append the new mbuf */
		error = FUNC3(nmc->nmc_mcur, mb);
		if (error) {
			FUNC1(mb);
			return (error);
		}
	}

	/* set up for using the new mbuf */
	nmc->nmc_mcur = mb;
	nmc->nmc_ptr = FUNC0(mb);
	nmc->nmc_left = FUNC4(mb);

	return (0);
}