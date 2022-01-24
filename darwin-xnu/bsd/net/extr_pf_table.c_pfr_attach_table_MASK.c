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
typedef  int /*<<< orphan*/  tbl ;
struct pfr_table {struct pfr_table* pfrt_anchor; struct pfr_table* pfrt_name; } ;
struct pfr_ktable {int pfrkt_flags; int /*<<< orphan*/ * pfrkt_refcnt; struct pfr_ktable* pfrkt_root; } ;
struct pf_ruleset {struct pf_anchor* anchor; } ;
struct pf_anchor {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 size_t PFR_REFCNT_RULE ; 
 int PFR_TFLAG_REFERENCED ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_table*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pf_lock ; 
 struct pfr_ktable* FUNC3 (struct pfr_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_ktable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_ktable*) ; 
 struct pfr_ktable* FUNC6 (struct pfr_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct pfr_ktable*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pfr_table*,char*,int) ; 

struct pfr_ktable *
FUNC9(struct pf_ruleset *rs, char *name)
{
	struct pfr_ktable	*kt, *rt;
	struct pfr_table	 tbl;
	struct pf_anchor	*ac = rs->anchor;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	FUNC1(&tbl, sizeof (tbl));
	FUNC8(tbl.pfrt_name, name, sizeof (tbl.pfrt_name));
	if (ac != NULL)
		FUNC8(tbl.pfrt_anchor, ac->path, sizeof (tbl.pfrt_anchor));
	kt = FUNC6(&tbl);
	if (kt == NULL) {
		kt = FUNC3(&tbl, FUNC2(), 1);
		if (kt == NULL)
			return (NULL);
		if (ac != NULL) {
			FUNC1(tbl.pfrt_anchor, sizeof (tbl.pfrt_anchor));
			rt = FUNC6(&tbl);
			if (rt == NULL) {
				rt = FUNC3(&tbl, 0, 1);
				if (rt == NULL) {
					FUNC4(kt, 0);
					return (NULL);
				}
				FUNC5(rt);
			}
			kt->pfrkt_root = rt;
		}
		FUNC5(kt);
	}
	if (!kt->pfrkt_refcnt[PFR_REFCNT_RULE]++)
		FUNC7(kt, kt->pfrkt_flags|PFR_TFLAG_REFERENCED);
	return (kt);
}