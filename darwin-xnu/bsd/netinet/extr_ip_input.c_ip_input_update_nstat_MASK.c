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
typedef  int /*<<< orphan*/  u_int32_t ;
struct rtentry {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct rtentry* FUNC0 (struct ifnet*,struct in_addr) ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp, struct in_addr src_ip,
    u_int32_t packets, u_int32_t bytes)
{
	if (nstat_collect) {
		struct rtentry *rt = FUNC0(ifp,
		    src_ip);
		if (rt != NULL) {
			FUNC1(rt, packets, bytes, 0);
			FUNC2(rt);
		}
	}
}