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
struct protosw {int dummy; } ;
struct domain {int dom_flags; } ;

/* Variables and functions */
 int DOM_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct protosw*,struct domain*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int route_proto_count ; 
 struct domain* routedomain ; 
 struct protosw* routesw ; 

__attribute__((used)) static void
FUNC3(struct domain *dp)
{
	struct protosw *pr;
	int i;

	FUNC0(!(dp->dom_flags & DOM_INITIALIZED));
	FUNC0(routedomain == NULL);

	routedomain = dp;

	for (i = 0, pr = &routesw[0]; i < route_proto_count; i++, pr++)
		FUNC1(pr, dp, 1);

	FUNC2();
}