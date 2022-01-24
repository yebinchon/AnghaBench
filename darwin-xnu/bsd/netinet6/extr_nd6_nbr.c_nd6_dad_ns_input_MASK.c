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
struct nd_opt_nonce {int dummy; } ;
struct ifaddr {int dummy; } ;
struct dadq {int dad_lladdrlen; int /*<<< orphan*/  dad_lladdr; int /*<<< orphan*/  dad_ns_icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (struct dadq*) ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ dad_enhanced ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct dadq* FUNC5 (struct ifaddr*,struct nd_opt_nonce*) ; 

__attribute__((used)) static void
FUNC6(struct ifaddr *ifa, char *lladdr,
    int lladdrlen, struct nd_opt_nonce *ndopt_nonce)
{
	struct dadq *dp;
	FUNC3(ifa != NULL);

	/* Ignore Nonce option when Enhanced DAD is disabled. */
	if (dad_enhanced == 0)
		ndopt_nonce = NULL;

	dp = FUNC5(ifa, ndopt_nonce);
	if (dp == NULL)
		return;

	FUNC0(dp);
	++dp->dad_ns_icount;
	if (lladdr && lladdrlen >= ETHER_ADDR_LEN) {
		FUNC4(dp->dad_lladdr, lladdr, ETHER_ADDR_LEN);
		dp->dad_lladdrlen = lladdrlen;
	}
	FUNC2(dp);
	FUNC1(dp);
}