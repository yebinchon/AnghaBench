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
typedef  scalar_t__ uint32_t ;
struct nfsm_chain {scalar_t__ nmc_ptr; int /*<<< orphan*/  nmc_mhead; int /*<<< orphan*/  nmc_left; int /*<<< orphan*/  nmc_mcur; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nfsm_chain*) ; 

int
FUNC4(struct nfsm_chain *nmc, uint32_t len)
{
	uint32_t mlen, new_offset;
	int error = 0;

	mlen = nmc->nmc_ptr - (caddr_t) FUNC0(nmc->nmc_mcur);
	if (len <= mlen) {
		nmc->nmc_ptr -= len;
		nmc->nmc_left += len;
		return (0);
	}

	new_offset = FUNC3(nmc) - len;
	FUNC2(error, nmc, nmc->nmc_mhead);
	if (error)
		return (error);

	return (FUNC1(nmc, new_offset));
}