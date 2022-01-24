#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; } ;
union sockaddr_in_4_6 {TYPE_5__ sin; TYPE_2__ sa; TYPE_1__ sin6; } ;
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  tcks ;
struct TYPE_9__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  addr6; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  addr6; } ;
struct tcp_cache_key_src {scalar_t__ af; TYPE_4__ faddr; TYPE_3__ laddr; struct ifnet* ifp; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_cache_key_src*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_cache_key_src*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct tcp_cache_key_src*) ; 

boolean_t FUNC5(struct ifnet *ifp,
    union sockaddr_in_4_6 *local_address, union sockaddr_in_4_6 *remote_address,
    u_int8_t *cookie, u_int8_t *cookie_len)
{
	struct tcp_cache_key_src tcks;

	FUNC2(&tcks, 0, sizeof(tcks));
	tcks.ifp = ifp;

	FUNC0();

	if (remote_address->sa.sa_family == AF_INET6) {
		FUNC1(&tcks.laddr.addr6, &local_address->sin6.sin6_addr, sizeof(struct in6_addr));
		FUNC1(&tcks.faddr.addr6, &remote_address->sin6.sin6_addr, sizeof(struct in6_addr));
		tcks.af = AF_INET6;
	} else if (remote_address->sa.sa_family == AF_INET) {
		FUNC1(&tcks.laddr.addr, &local_address->sin.sin_addr, sizeof(struct in_addr));
		FUNC1(&tcks.faddr.addr, &remote_address->sin.sin_addr, sizeof(struct in_addr));
		tcks.af = AF_INET;
	}

	if (FUNC4(&tcks)) {
		if (!FUNC3(&tcks, cookie, cookie_len)) {
		    *cookie_len = 0;
		}
		return TRUE;
	}

	return FALSE;
}