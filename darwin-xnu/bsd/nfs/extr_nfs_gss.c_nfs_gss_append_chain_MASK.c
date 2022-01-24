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
struct nfsm_chain {int /*<<< orphan*/  nmc_left; scalar_t__ nmc_ptr; int /*<<< orphan*/ * nmc_mcur; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nfsm_chain *nmc, mbuf_t mc)
{
	int error = 0;
	mbuf_t mb, tail;

	/* Connect the mbuf chains */
	error = FUNC3(nmc->nmc_mcur, mc);
	if (error)
		return (error);

	/* Find the last mbuf in the chain */
	tail = NULL;
	for (mb = mc; mb; mb = FUNC2(mb))
		tail = mb;

	nmc->nmc_mcur = tail;
	nmc->nmc_ptr = (caddr_t) FUNC0(tail) + FUNC1(tail);
	nmc->nmc_left = FUNC4(tail);

	return (0);
}