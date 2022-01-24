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
typedef  int /*<<< orphan*/  u_char ;
struct nfsm_chain {void* nmc_mcur; scalar_t__ nmc_left; int /*<<< orphan*/ * nmc_ptr; } ;
typedef  void* mbuf_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int EBADRPC ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 void* FUNC6 (void*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,scalar_t__) ; 
 int FUNC9 (void*,void*) ; 
 scalar_t__ FUNC10 (void*) ; 
 int FUNC11 (struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,void**,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

int
FUNC14(struct nfsm_chain *nmc, uint32_t len, u_char **pptr)
{
	mbuf_t mbcur, mb;
	uint32_t left, need, mblen, cplen, padlen;
	u_char *ptr;
	int error = 0;

	/* move to next mbuf with data */
	while (nmc->nmc_mcur && (nmc->nmc_left == 0)) {
		mb = FUNC6(nmc->nmc_mcur);
		nmc->nmc_mcur = mb;
		if (!mb)
			break;
		nmc->nmc_ptr = FUNC2(mb);
		nmc->nmc_left = FUNC4(mb);
	}
	/* check if we've run out of data */
	if (!nmc->nmc_mcur)
		return (EBADRPC);

	/* do we already have a contiguous buffer? */
	if (nmc->nmc_left >= len) {
		/* the returned pointer will be the current pointer */
		*pptr = (u_char*)nmc->nmc_ptr;
		error = FUNC11(nmc, FUNC13(len));
		return (error);
	}

	padlen = FUNC13(len) - len;

	/* we need (len - left) more bytes */
	mbcur = nmc->nmc_mcur;
	left = nmc->nmc_left;
	need = len - left;

	if (need > FUNC10(mbcur)) {
		/*
		 * The needed bytes won't fit in the current mbuf so we'll
		 * allocate a new mbuf to hold the contiguous range of data.
		 */
		FUNC12(error, &mb, len);
		if (error)
			return (error);
		/* double check that this mbuf can hold all the data */
		if (FUNC5(mb) < len) {
			FUNC3(mb);
			return (EOVERFLOW);
		}

		/* the returned pointer will be the new mbuf's data pointer */
		*pptr = ptr = FUNC2(mb);

		/* copy "left" bytes to the new mbuf */
		FUNC1(nmc->nmc_ptr, ptr, left);
		ptr += left;
		FUNC8(mb, left);

		/* insert the new mbuf between the current and next mbufs */
		error = FUNC9(mb, FUNC6(mbcur));
		if (!error)
			error = FUNC9(mbcur, mb);
		if (error) {
			FUNC3(mb);
			return (error);
		}

		/* reduce current mbuf's length by "left" */
		FUNC8(mbcur, FUNC4(mbcur) - left);

		/*
		 * update nmc's state to point at the end of the mbuf
		 * where the needed data will be copied to.
		 */
		nmc->nmc_mcur = mbcur = mb;
		nmc->nmc_left = 0;
		nmc->nmc_ptr = (caddr_t)ptr;
	} else {
		/* The rest of the data will fit in this mbuf. */

		/* the returned pointer will be the current pointer */
		*pptr = (u_char*)nmc->nmc_ptr;

		/*
		 * update nmc's state to point at the end of the mbuf
		 * where the needed data will be copied to.
		 */
		nmc->nmc_ptr += left;
		nmc->nmc_left = 0;
	}

	/*
	 * move the next "need" bytes into the current
	 * mbuf from the mbufs that follow
	 */

	/* extend current mbuf length */
	FUNC8(mbcur, FUNC4(mbcur) + need);

	/* mb follows mbufs we're copying/compacting data from */
	mb = FUNC6(mbcur);

	while (need && mb) {
		/* copy as much as we need/can */
		ptr = FUNC2(mb);
		mblen = FUNC4(mb);
		cplen = FUNC0(mblen, need);
		if (cplen) {
			FUNC1(ptr, nmc->nmc_ptr, cplen);
			/*
			 * update the mbuf's pointer and length to reflect that
			 * the data was shifted to an earlier mbuf in the chain
			 */
			error = FUNC7(mb, ptr + cplen, mblen - cplen);
			if (error) {
				FUNC8(mbcur, FUNC4(mbcur) - need);
				return (error);
			}
			/* update pointer/need */
			nmc->nmc_ptr += cplen;
			need -= cplen;
		}
		/* if more needed, go to next mbuf */
		if (need)
			mb = FUNC6(mb);
	}

	/* did we run out of data in the mbuf chain? */
	if (need) {
		FUNC8(mbcur, FUNC4(mbcur) - need);
		return (EBADRPC);
	}

	/*
	 * update nmc's state to point after this contiguous data
	 *
	 * "mb" points to the last mbuf we copied data from so we
	 * just set nmc to point at whatever remains in that mbuf.
	 */
	nmc->nmc_mcur = mb;
	nmc->nmc_ptr = FUNC2(mb);
	nmc->nmc_left = FUNC4(mb);

	/* move past any padding */
	if (padlen)
		error = FUNC11(nmc, padlen);

	return (error);
}