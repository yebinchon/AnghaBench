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
struct sockaddr_storage {int ss_family; int ss_len; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct rtentry {int rt_flags; int /*<<< orphan*/  (* rt_llinfo_get_iflri ) (struct rtentry*,struct sockaddr_storage*) ;struct rtentry* rt_gwroute; } ;
struct radix_node_head {int dummy; } ;
struct ifnet_llreach_info {int ss_family; int ss_len; } ;
struct ifnet {int /*<<< orphan*/  if_index; } ;
typedef  int /*<<< orphan*/  mask_ss ;
typedef  int /*<<< orphan*/  dst_ss ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int ESRCH ; 
 int RTF_GATEWAY ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 TYPE_1__* FUNC7 (struct rtentry*) ; 
 struct rtentry* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct radix_node_head*,int /*<<< orphan*/ ) ; 
 struct radix_node_head** rt_tables ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtentry*,struct sockaddr_storage*) ; 

int
FUNC11(struct ifnet *ifp, int af,
    struct ifnet_llreach_info *iflri)
{
	struct radix_node_head *rnh;
	struct sockaddr_storage dst_ss, mask_ss;
	struct rtentry *rt;
	int error = ESRCH;

	FUNC3(ifp != NULL && iflri != NULL &&
	    (af == AF_INET || af == AF_INET6));

	FUNC4(iflri, sizeof (*iflri));

	if ((rnh = rt_tables[af]) == NULL)
		return (error);

	FUNC4(&dst_ss, sizeof (dst_ss));
	FUNC4(&mask_ss, sizeof (mask_ss));
	dst_ss.ss_family = af;
	dst_ss.ss_len = (af == AF_INET) ? sizeof (struct sockaddr_in) :
	    sizeof (struct sockaddr_in6);

	FUNC5(rnh_lock);
	rt = FUNC8(TRUE, FUNC2(&dst_ss), FUNC2(&mask_ss), rnh, ifp->if_index);
	if (rt != NULL) {
		struct rtentry *gwrt;

		FUNC0(rt);
		if ((rt->rt_flags & RTF_GATEWAY) &&
		    (gwrt = rt->rt_gwroute) != NULL &&
		    FUNC7(rt)->sa_family == FUNC7(gwrt)->sa_family &&
		    (gwrt->rt_flags & RTF_UP)) {
			FUNC1(rt);
			FUNC0(gwrt);
			if (gwrt->rt_llinfo_get_iflri != NULL) {
				(*gwrt->rt_llinfo_get_iflri)(gwrt, iflri);
				error = 0;
			}
			FUNC1(gwrt);
		} else {
			FUNC1(rt);
		}
		FUNC9(rt);
	}
	FUNC6(rnh_lock);

	return (error);
}