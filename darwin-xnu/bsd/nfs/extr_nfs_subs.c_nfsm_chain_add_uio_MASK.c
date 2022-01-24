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
struct nfsm_chain {scalar_t__ nmc_left; int /*<<< orphan*/  nmc_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct nfsm_chain*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC5(struct nfsm_chain *nmc, uio_t uio, uint32_t len)
{
	uint32_t paddedlen, tlen;
	int error;

	paddedlen = FUNC3(len);

	while (paddedlen) {
		if (!nmc->nmc_left) {
			error = FUNC2(nmc, paddedlen);
			if (error)
				return (error);
		}
		tlen = FUNC0(nmc->nmc_left, paddedlen);
		if (tlen) {
			if (len) {
				if (tlen > len)
					tlen = len;
				FUNC4(nmc->nmc_ptr, tlen, uio);
			} else {
				FUNC1(nmc->nmc_ptr, tlen);
			}
			nmc->nmc_ptr += tlen;
			nmc->nmc_left -= tlen;
			paddedlen -= tlen;
			if (len)
				len -= tlen;
		}
	}
	return (0);
}