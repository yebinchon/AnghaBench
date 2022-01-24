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
struct nfsm_chain {scalar_t__ nmc_left; int /*<<< orphan*/  nmc_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct nfsm_chain*,scalar_t__) ; 

int
FUNC3(struct nfsm_chain *nmc, const u_char *buf, uint32_t len)
{
	uint32_t tlen;
	int error;

	while (len > 0) {
		if (nmc->nmc_left <= 0) {
			error = FUNC2(nmc, len);
			if (error)
				return (error);
		}
		tlen = FUNC0(nmc->nmc_left, len);
		FUNC1(buf, nmc->nmc_ptr, tlen);
		nmc->nmc_ptr += tlen;
		nmc->nmc_left -= tlen;
		len -= tlen;
		buf += tlen;
	}
	return (0);
}