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
struct ifnet {int /*<<< orphan*/  if_cached_route_lock; int /*<<< orphan*/  if_src_route; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct route*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, struct route *dst)
{
	FUNC1(&ifp->if_cached_route_lock);
	FUNC0(&ifp->if_cached_route_lock);

	FUNC3(dst, &ifp->if_src_route, sizeof (*dst));

	FUNC2(&ifp->if_cached_route_lock);
}