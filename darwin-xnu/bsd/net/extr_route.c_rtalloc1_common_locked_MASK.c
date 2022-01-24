#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/  ss_len; } ;
struct sockaddr {size_t sa_family; } ;
struct rtentry {int rt_flags; int /*<<< orphan*/  rt_gateway; TYPE_1__* rt_ifp; } ;
struct rt_addrinfo {struct sockaddr** rti_info; } ;
struct radix_node_head {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  def_key ;
typedef  struct sockaddr_storage* caddr_t ;
struct TYPE_7__ {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  sa_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  rts_unreach; } ;
struct TYPE_5__ {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t RTAX_DST ; 
 int RTF_CLONING ; 
 int RTF_HOST ; 
 int RTF_LLINFO ; 
 int RTF_PRCLONING ; 
 int RTF_ROUTER ; 
 int RTF_XRESOLVE ; 
 int RTM_MISS ; 
 int RTM_RESOLVE ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct rtentry*) ; 
 struct rtentry* FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,struct radix_node_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct rt_addrinfo*,int /*<<< orphan*/ ,int) ; 
 struct radix_node_head** rt_tables ; 
 struct rtentry* FUNC7 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*) ; 
 int FUNC9 (int,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rtentry**) ; 
 TYPE_2__ rtstat ; 

struct rtentry *
FUNC10(struct sockaddr *dst, int report, uint32_t ignflags,
    unsigned int ifscope)
{
	struct radix_node_head *rnh = rt_tables[dst->sa_family];
	struct rtentry *rt, *newrt = NULL;
	struct rt_addrinfo info;
	uint32_t nflags;
	int  err = 0, msgtype = RTM_MISS;

	if (rnh == NULL)
		goto unreachable;

	/*
	 * Find the longest prefix or exact (in the scoped case) address match;
	 * callee adds a reference to entry and checks for root node as well
	 */
	rt = FUNC5(FALSE, dst, NULL, rnh, ifscope);
	if (rt == NULL)
		goto unreachable;

	FUNC0(rt);
	newrt = rt;
	nflags = rt->rt_flags & ~ignflags;
	FUNC1(rt);
	if (report && (nflags & (RTF_CLONING | RTF_PRCLONING))) {
		/*
		 * We are apparently adding (report = 0 in delete).
		 * If it requires that it be cloned, do so.
		 * (This implies it wasn't a HOST route.)
		 */
		err = FUNC9(RTM_RESOLVE, dst, NULL, NULL, 0, &newrt);
		if (err) {
			/*
			 * If the cloning didn't succeed, maybe what we
			 * have from lookup above will do.  Return that;
			 * no need to hold another reference since it's
			 * already done.
			 */
			newrt = rt;
			goto miss;
		}

		/*
		 * We cloned it; drop the original route found during lookup.
		 * The resulted cloned route (newrt) would now have an extra
		 * reference held during rtrequest.
		 */
		FUNC8(rt);

		/*
		 * If the newly created cloned route is a direct host route
		 * then also check if it is to a router or not.
		 * If it is, then set the RTF_ROUTER flag on the host route
		 * for the gateway.
		 *
		 * XXX It is possible for the default route to be created post
		 * cloned route creation of router's IP.
		 * We can handle that corner case by special handing for RTM_ADD
		 * of default route.
		 */
		if ((newrt->rt_flags & (RTF_HOST | RTF_LLINFO)) ==
		    (RTF_HOST | RTF_LLINFO)) {
			struct rtentry *defrt = NULL;
			struct sockaddr_storage def_key;

			FUNC2(&def_key, sizeof(def_key));
			def_key.ss_len = FUNC4(newrt)->sa_len;
			def_key.ss_family = FUNC4(newrt)->sa_family;

			defrt = FUNC7((struct sockaddr *)&def_key,
					0, 0, newrt->rt_ifp->if_index);

			if (defrt) {
				if (FUNC3(FUNC4(newrt), defrt->rt_gateway)) {
					newrt->rt_flags |= RTF_ROUTER;
				}
				FUNC8(defrt);
			}
		}

		if ((rt = newrt) && (rt->rt_flags & RTF_XRESOLVE)) {
			/*
			 * If the new route specifies it be
			 * externally resolved, then go do that.
			 */
			msgtype = RTM_RESOLVE;
			goto miss;
		}
	}
	goto done;

unreachable:
	/*
	 * Either we hit the root or couldn't find any match,
	 * Which basically means "cant get there from here"
	 */
	rtstat.rts_unreach++;

miss:
	if (report) {
		/*
		 * If required, report the failure to the supervising
		 * Authorities.
		 * For a delete, this is not an error. (report == 0)
		 */
		FUNC2((caddr_t)&info, sizeof(info));
		info.rti_info[RTAX_DST] = dst;
		FUNC6(msgtype, &info, 0, err);
	}
done:
	return (newrt);
}