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
struct pf_frent {scalar_t__ fr_off; scalar_t__ fr_end; int /*<<< orphan*/  fr_m; } ;
struct pf_frcache {scalar_t__ fr_off; scalar_t__ fr_end; int /*<<< orphan*/  fr_m; } ;
struct pf_fragment {int /*<<< orphan*/  fr_cache; int /*<<< orphan*/  fr_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pf_fragment*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct pf_frent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_frent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  fr_next ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_cent_pl ; 
 int /*<<< orphan*/  pf_frent_pl ; 
 int /*<<< orphan*/  pf_ncache ; 
 int /*<<< orphan*/  pf_nfrents ; 
 int /*<<< orphan*/  FUNC6 (struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct pf_frent*) ; 

__attribute__((used)) static void
FUNC8(struct pf_fragment *frag)
{
	struct pf_frent		*frent;
	struct pf_frcache	*frcache;

	/* Free all fragments */
	if (FUNC0(frag)) {
		for (frent = FUNC2(&frag->fr_queue); frent;
		    frent = FUNC2(&frag->fr_queue)) {
			FUNC3(frent, fr_next);

			FUNC5(frent->fr_m);
			FUNC7(&pf_frent_pl, frent);
			pf_nfrents--;
		}
	} else {
		for (frcache = FUNC2(&frag->fr_cache); frcache;
		    frcache = FUNC2(&frag->fr_cache)) {
			FUNC3(frcache, fr_next);

			FUNC4(FUNC1(&frag->fr_cache) ||
			    FUNC2(&frag->fr_cache)->fr_off >
			    frcache->fr_end);

			FUNC7(&pf_cent_pl, frcache);
			pf_ncache--;
		}
	}

	FUNC6(frag);
}