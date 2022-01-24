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
struct route {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_cached_route_lock; int /*<<< orphan*/  if_src_route; scalar_t__ if_fwd_cacheok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct route*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct route*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp, struct route *src)
{
	FUNC2(&ifp->if_cached_route_lock);
	FUNC1(&ifp->if_cached_route_lock);

	if (ifp->if_fwd_cacheok) {
		FUNC4(src, &ifp->if_src_route, sizeof (*src));
	} else {
		FUNC0(src);
	}
	FUNC3(&ifp->if_cached_route_lock);
}