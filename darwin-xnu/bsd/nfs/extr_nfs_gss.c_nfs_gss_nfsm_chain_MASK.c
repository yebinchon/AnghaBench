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
struct nfsm_chain {scalar_t__ nmc_flags; int /*<<< orphan*/  nmc_left; scalar_t__ nmc_ptr; int /*<<< orphan*/ * nmc_mcur; int /*<<< orphan*/ * nmc_mhead; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nfsm_chain *nmc, mbuf_t mc)
{
	mbuf_t mb, tail;

	/* Find the last mbuf in the chain */
	tail = NULL;
	for (mb = mc; mb; mb = FUNC2(mb))
		tail = mb;

	nmc->nmc_mhead = mc;
	nmc->nmc_mcur = tail;
	nmc->nmc_ptr = (caddr_t) FUNC0(tail) + FUNC1(tail);
	nmc->nmc_left = FUNC3(tail);
	nmc->nmc_flags = 0;
}