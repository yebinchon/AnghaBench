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
struct pf_fragment {int /*<<< orphan*/  fr_timeout; } ;
struct pf_frag_tree {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pf_fragment*) ; 
 struct pf_fragment* FUNC1 (int /*<<< orphan*/ ,struct pf_frag_tree*,struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_fragment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_fragment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frag_next ; 
 int /*<<< orphan*/  pf_cachequeue ; 
 int /*<<< orphan*/  pf_frag_tree ; 
 int /*<<< orphan*/  pf_fragqueue ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static struct pf_fragment *
FUNC5(struct pf_fragment *key, struct pf_frag_tree *tree)
{
	struct pf_fragment *frag;
	
	frag = FUNC1(pf_frag_tree, tree, key);
	if (frag != NULL) {
		/* XXX Are we sure we want to update the timeout? */
		frag->fr_timeout = FUNC4();
		if (FUNC0(frag)) {
			FUNC3(&pf_fragqueue, frag, frag_next);
			FUNC2(&pf_fragqueue, frag, frag_next);
		} else {
			FUNC3(&pf_cachequeue, frag, frag_next);
			FUNC2(&pf_cachequeue, frag, frag_next);
		}
	}
	
	return (frag);
}