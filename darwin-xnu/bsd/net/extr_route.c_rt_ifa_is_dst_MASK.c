#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
struct ifaddr {struct sockaddr* ifa_addr; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*) ; 
 int /*<<< orphan*/  TRUE ; 

boolean_t
FUNC5(struct sockaddr *dst, struct ifaddr *ifa)
{
	boolean_t result = FALSE;

	if (ifa == NULL || ifa->ifa_addr == NULL)
		return (result);

	FUNC0(ifa);

	if (dst->sa_family == ifa->ifa_addr->sa_family &&
	    ((dst->sa_family == AF_INET &&
	    FUNC3(dst)->sin_addr.s_addr ==
	    FUNC3(ifa->ifa_addr)->sin_addr.s_addr) ||
	    (dst->sa_family == AF_INET6 &&
	    FUNC2(FUNC4(dst), FUNC4(ifa->ifa_addr)))))
		result = TRUE;

	FUNC1(ifa);

	return (result);
}