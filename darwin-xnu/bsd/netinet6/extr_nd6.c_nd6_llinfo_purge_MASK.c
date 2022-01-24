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
struct rtentry {scalar_t__ rt_llinfo_purge; struct llinfo_nd6* rt_llinfo; } ;
struct llinfo_nd6 {scalar_t__ ln_lastused; int /*<<< orphan*/ * ln_llreach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rtentry *rt)
{
	struct llinfo_nd6 *ln = rt->rt_llinfo;

	FUNC1(rt);
	FUNC2(rt->rt_llinfo_purge == nd6_llinfo_purge && ln != NULL);

	if (ln->ln_llreach != NULL) {
		FUNC0(rt);
		FUNC3(ln->ln_llreach);
		ln->ln_llreach = NULL;
	}
	ln->ln_lastused = 0;
}