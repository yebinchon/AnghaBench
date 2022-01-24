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
struct in6_addr {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in6*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void
FUNC3(in_port_t port, struct in6_addr *addr_p,
    struct sockaddr_in6 *sin6)
{
	FUNC1(sin6, sizeof (*sin6));
	sin6->sin6_family = AF_INET6;
	sin6->sin6_len = sizeof (*sin6);
	sin6->sin6_port = port;
	sin6->sin6_addr = *addr_p;

	/* would be good to use sa6_recoverscope(), except for locking  */
	if (FUNC0(&sin6->sin6_addr))
		sin6->sin6_scope_id = FUNC2(sin6->sin6_addr.s6_addr16[1]);
	else
		sin6->sin6_scope_id = 0;	/* XXX */
	if (FUNC0(&sin6->sin6_addr))
		sin6->sin6_addr.s6_addr16[1] = 0;
}