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
struct in_addr {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_len; struct in_addr sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;
struct route {struct rtentry* ro_rt; int /*<<< orphan*/  ro_dst; } ;
struct ifnet {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct route*) ; 
 scalar_t__ FUNC1 (struct route*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,struct route*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,struct route*) ; 
 struct rtentry* FUNC7 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rtentry *
FUNC8(struct ifnet	*ifp, struct in_addr src_ip)
{
	struct route		src_rt;
	struct sockaddr_in	*dst;

	dst = (struct sockaddr_in *)(void *)(&src_rt.ro_dst);

	FUNC6(ifp, &src_rt);

	if (FUNC1(&src_rt) || src_ip.s_addr != dst->sin_addr.s_addr) {
		FUNC0(&src_rt);
		if (dst->sin_family != AF_INET) {
			FUNC4(&src_rt.ro_dst, sizeof (src_rt.ro_dst));
			dst->sin_len = sizeof (src_rt.ro_dst);
			dst->sin_family = AF_INET;
		}
		dst->sin_addr = src_ip;

		FUNC3(src_rt.ro_rt == NULL);
		src_rt.ro_rt = FUNC7((struct sockaddr *)dst,
		    0, 0, ifp->if_index);

		if (src_rt.ro_rt != NULL) {
			/* retain a ref, copyin consumes one */
			struct rtentry	*rte = src_rt.ro_rt;
			FUNC2(rte);
			FUNC5(ifp, &src_rt);
			src_rt.ro_rt = rte;
		}
	}

	return (src_rt.ro_rt);
}