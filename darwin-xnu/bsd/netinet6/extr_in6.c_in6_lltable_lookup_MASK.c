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
typedef  int u_int ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {int /*<<< orphan*/  llt_af; int /*<<< orphan*/  llt_ifp; } ;
struct llentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int LLE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int LLE_UNLOCKED ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 struct llentry* FUNC4 (struct lltable*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct llentry *
FUNC5(struct lltable *llt, u_int flags,
		const struct sockaddr *l3addr)
{
	const struct sockaddr_in6 *sin6 = (const struct sockaddr_in6 *)(const void *)l3addr;
	struct llentry *lle;

	FUNC0(llt->llt_ifp, llt->llt_af);
	FUNC1(l3addr->sa_family == AF_INET6,
			("sin_family %d", l3addr->sa_family));

	lle = FUNC4(llt, &sin6->sin6_addr);

	if (lle == NULL)
		return (NULL);

	FUNC1((flags & (LLE_UNLOCKED|LLE_EXCLUSIVE)) !=
			(LLE_UNLOCKED|LLE_EXCLUSIVE),("wrong lle request flags: 0x%X",
				flags));

	if (flags & LLE_UNLOCKED)
		return (lle);

	if (flags & LLE_EXCLUSIVE)
		FUNC3(lle);
	else
		FUNC2(lle);
	return (lle);
}