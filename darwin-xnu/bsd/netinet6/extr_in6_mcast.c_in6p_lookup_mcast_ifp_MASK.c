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
struct sockaddr_in6 {scalar_t__ sin6_family; int /*<<< orphan*/  sin6_addr; } ;
struct route_in6 {TYPE_2__* ro_rt; int /*<<< orphan*/  ro_dst; } ;
struct route {int dummy; } ;
struct inpcb {int inp_vflag; int inp_flags; TYPE_1__* inp_boundifp; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {struct ifnet* rt_ifp; } ;
struct TYPE_3__ {unsigned int if_index; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 unsigned int IFSCOPE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int INP_BOUND_IF ; 
 int INP_IPV6 ; 
 int /*<<< orphan*/  FUNC1 (struct route_in6*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sockaddr_in6 const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct route_in6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct route*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct ifnet *
FUNC6(const struct inpcb *in6p,
    const struct sockaddr_in6 *gsin6)
{
	struct route_in6	 ro6;
	struct ifnet		*ifp;
	unsigned int		ifscope = IFSCOPE_NONE;

	FUNC2(in6p == NULL || (in6p->inp_vflag & INP_IPV6));
	FUNC2(gsin6->sin6_family == AF_INET6);
	if (FUNC0(&gsin6->sin6_addr) == 0)  
		return NULL;

	if (in6p != NULL && (in6p->inp_flags & INP_BOUND_IF))
		ifscope = in6p->inp_boundifp->if_index;

	ifp = NULL;
	FUNC4(&ro6, 0, sizeof(struct route_in6));
	FUNC3(&ro6.ro_dst, gsin6, sizeof(struct sockaddr_in6));
	FUNC5((struct route *)&ro6, 0, ifscope);
	if (ro6.ro_rt != NULL) {
		ifp = ro6.ro_rt->rt_ifp;
		FUNC2(ifp != NULL);
	}
	FUNC1(&ro6);

	return (ifp);
}