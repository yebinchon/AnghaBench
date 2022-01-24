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
typedef  int /*<<< orphan*/  uio_t ;
typedef  scalar_t__ uint32_t ;
struct nfsm_chain {int /*<<< orphan*/  nmc_left; int /*<<< orphan*/ * nmc_ptr; scalar_t__ nmc_mcur; } ;
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 int EBADRPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,struct nfsm_chain*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC7(struct nfsm_chain *nmc, uint32_t len, uio_t uio)
{
	uint32_t cplen, padlen;
	int error = 0;

	padlen = FUNC5(len) - len;

	/* loop through mbufs copying all the data we need */
	while (len && nmc->nmc_mcur) {
		/* copy as much as we need/can */
		cplen = FUNC0(nmc->nmc_left, len);
		if (cplen) {
			error = FUNC6(nmc->nmc_ptr, cplen, uio);
			if (error)
				return (error);
			nmc->nmc_ptr += cplen;
			nmc->nmc_left -= cplen;
			len -= cplen;
		}
		/* if more needed, go to next mbuf */
		if (len) {
			mbuf_t mb = FUNC3(nmc->nmc_mcur);
			nmc->nmc_mcur = mb;
			nmc->nmc_ptr = mb ? FUNC1(mb) : NULL;
			nmc->nmc_left = mb ? FUNC2(mb) : 0;
		}
	}

	/* did we run out of data in the mbuf chain? */
	if (len)
		return (EBADRPC);

	if (padlen)
		FUNC4(error, nmc, padlen);

	return (error);
}