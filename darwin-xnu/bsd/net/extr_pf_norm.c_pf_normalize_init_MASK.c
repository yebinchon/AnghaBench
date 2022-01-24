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
struct pf_state_scrub {int dummy; } ;
struct pf_frent {int dummy; } ;
struct pf_frcache {int dummy; } ;
struct pf_fragment {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFFRAG_FRAG_HIWAT ; 
 int /*<<< orphan*/  PFFRAG_FRCACHE_HIWAT ; 
 int /*<<< orphan*/  PFFRAG_FRCENT_HIWAT ; 
 int /*<<< orphan*/  PFFRAG_FRENT_HIWAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pf_cache_pl ; 
 int /*<<< orphan*/  pf_cachequeue ; 
 int /*<<< orphan*/  pf_cent_pl ; 
 int /*<<< orphan*/  pf_frag_pl ; 
 int /*<<< orphan*/  pf_fragqueue ; 
 int /*<<< orphan*/  pf_frent_pl ; 
 int /*<<< orphan*/  pf_state_scrub_pl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	FUNC1(&pf_frent_pl, sizeof (struct pf_frent), 0, 0, 0, "pffrent",
	    NULL);
	FUNC1(&pf_frag_pl, sizeof (struct pf_fragment), 0, 0, 0, "pffrag",
	    NULL);
	FUNC1(&pf_cache_pl, sizeof (struct pf_fragment), 0, 0, 0,
	    "pffrcache", NULL);
	FUNC1(&pf_cent_pl, sizeof (struct pf_frcache), 0, 0, 0, "pffrcent",
	    NULL);
	FUNC1(&pf_state_scrub_pl, sizeof (struct pf_state_scrub), 0, 0, 0,
	    "pfstscr", NULL);

	FUNC3(&pf_frag_pl, PFFRAG_FRAG_HIWAT);
	FUNC2(&pf_frent_pl, PFFRAG_FRENT_HIWAT, NULL, 0);
	FUNC2(&pf_cache_pl, PFFRAG_FRCACHE_HIWAT, NULL, 0);
	FUNC2(&pf_cent_pl, PFFRAG_FRCENT_HIWAT, NULL, 0);

	FUNC0(&pf_fragqueue);
	FUNC0(&pf_cachequeue);
}