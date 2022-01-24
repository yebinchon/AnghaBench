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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct nfsm_chain*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

int
FUNC5(struct nfsm_chain *nmc, const u_char *buf, uint32_t len)
{
	uint32_t paddedlen, tlen;
	int error;

	paddedlen = FUNC4(len);

	while (paddedlen) {
		if (!nmc->nmc_left) {
			error = FUNC3(nmc, paddedlen);
			if (error)
				return (error);
		}
		tlen = FUNC0(nmc->nmc_left, paddedlen);
		if (tlen) {
			if (len) {
				if (tlen > len)
					tlen = len;
				FUNC1(buf, nmc->nmc_ptr, tlen);
			} else {
				FUNC2(nmc->nmc_ptr, tlen);
			}
			nmc->nmc_ptr += tlen;
			nmc->nmc_left -= tlen;
			paddedlen -= tlen;
			if (len) {
				buf += tlen;
				len -= tlen;
			}
		}
	}
	return (0);
}