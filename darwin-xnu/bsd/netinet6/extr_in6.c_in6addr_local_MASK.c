#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {TYPE_1__* rt_gateway; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sin6 ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ AF_LINK ; 
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct in6_addr*) ; 
 struct rtentry* FUNC6 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 

int
FUNC8(struct in6_addr *in6)
{
	struct rtentry *rt;
	struct sockaddr_in6 sin6;
	int local = 0;

	if (FUNC0(in6) || FUNC1(in6))
		return (1);

	sin6.sin6_family = AF_INET6;
	sin6.sin6_len = sizeof (sin6);
	FUNC4(in6, &sin6.sin6_addr, sizeof (*in6));
	rt = FUNC6((struct sockaddr *)&sin6, 0, 0);

	if (rt != NULL) {
		FUNC2(rt);
		if (rt->rt_gateway->sa_family == AF_LINK)
			local = 1;
		FUNC3(rt);
		FUNC7(rt);
	} else {
		local = FUNC5(in6);
	}
	return (local);
}