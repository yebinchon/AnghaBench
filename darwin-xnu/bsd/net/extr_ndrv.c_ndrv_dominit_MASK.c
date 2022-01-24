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
 int ndrv_proto_count ; 
 struct domain* ndrvdomain ; 
 struct protosw* ndrvsw ; 
 int /*<<< orphan*/  FUNC1 (struct protosw*,struct domain*,int) ; 

__attribute__((used)) static void
FUNC2(struct domain *dp)
{
	struct protosw *pr;
	int i;

	FUNC0(!(dp->dom_flags & DOM_INITIALIZED));
	FUNC0(ndrvdomain == NULL);

	ndrvdomain = dp;

	for (i = 0, pr = &ndrvsw[0]; i < ndrv_proto_count; i++, pr++)
		FUNC1(pr, dp, 1);
}