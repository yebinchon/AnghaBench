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
struct pf_fragment {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_fragment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frag_next ; 
 int /*<<< orphan*/  pf_cache_pl ; 
 int /*<<< orphan*/  pf_cache_tree ; 
 int /*<<< orphan*/  pf_cachequeue ; 
 int /*<<< orphan*/  pf_frag_pl ; 
 int /*<<< orphan*/  pf_frag_tree ; 
 int /*<<< orphan*/  pf_fragqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_fragment*) ; 

__attribute__((used)) static void
FUNC4(struct pf_fragment *frag)
{
	if (FUNC0(frag)) {
		FUNC1(pf_frag_tree, &pf_frag_tree, frag);
		FUNC2(&pf_fragqueue, frag, frag_next);
		FUNC3(&pf_frag_pl, frag);
	} else {
		FUNC1(pf_frag_tree, &pf_cache_tree, frag);
		FUNC2(&pf_cachequeue, frag, frag_next);
		FUNC3(&pf_cache_pl, frag);
	}
}