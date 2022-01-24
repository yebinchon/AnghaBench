#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int profil_buckets; int max_cpu; scalar_t__ my_cpu; } ;
struct TYPE_3__ {int highpc; int lowpc; int text_len; int profil_len; int counter_size; int scale; } ;
struct profile_vars {int debug; int init; int active; int use_profil; int check_funcs; scalar_t__ use_dci; TYPE_2__ stats; TYPE_1__ profil_info; int /*<<< orphan*/  profil_buf; int /*<<< orphan*/  page_size; } ;
typedef  int prof_uptrint_t ;
typedef  int /*<<< orphan*/  LHISTCOUNTER ;

/* Variables and functions */
 int /*<<< orphan*/  ACONTEXT_PROFIL ; 
 int HISTFRACTION ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PROFILE_ALLOC_MEM_YES ; 
 int /*<<< orphan*/  PROFILE_GPROF ; 
 struct profile_vars* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct profile_vars*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct profile_vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * etext ; 
 int /*<<< orphan*/  FUNC6 (char*,long,long,long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pstart ; 

void
FUNC7(void)
{
	prof_uptrint_t textsize;
	prof_uptrint_t monsize;
	prof_uptrint_t lowpc;
	prof_uptrint_t highpc;
	struct profile_vars *pv;

	/*
	 * round lowpc and highpc to multiples of the density we're using
	 * so the rest of the scaling (here and in gprof) stays in ints.
	 */

	lowpc = FUNC1((prof_uptrint_t)&pstart[0], HISTFRACTION*sizeof(LHISTCOUNTER));
	highpc = FUNC2((prof_uptrint_t)&etext[0], HISTFRACTION*sizeof(LHISTCOUNTER));
	textsize = highpc - lowpc;
	monsize = (textsize / HISTFRACTION) * sizeof(LHISTCOUNTER);

	pv = FUNC0(0);

#ifdef DEBUG_PROFILE
	pv->debug = 1;
#endif
	pv->page_size = PAGE_SIZE;
	FUNC4(pv, PROFILE_GPROF, PROFILE_ALLOC_MEM_YES);

	/* Profil related variables */
	pv->profil_buf = FUNC3 (pv, monsize, ACONTEXT_PROFIL);
	pv->profil_info.highpc = highpc;
	pv->profil_info.lowpc = lowpc;
	pv->profil_info.text_len = textsize;
	pv->profil_info.profil_len = monsize;
	pv->profil_info.counter_size = sizeof(LHISTCOUNTER);
	pv->profil_info.scale = 0x10000 / HISTFRACTION;
	pv->stats.profil_buckets = monsize / sizeof(LHISTCOUNTER);

	/* Other gprof variables */
	pv->stats.my_cpu = 0;
	pv->stats.max_cpu = 1;  /* initial number of cpus */
	pv->init = 1;
	pv->active = 1;
	pv->use_dci = 0;
	pv->use_profil = 1;
	pv->check_funcs = 1;		/* for now */

	if (pv->debug) {
		FUNC6("Profiling kernel, s_textsize=%ld, monsize=%ld [0x%lx..0x%lx], cpu = %d\n",
			 (long)textsize,
			(long)monsize,
			(long)lowpc,
			(long)highpc,
			0);
	}

	FUNC5();
}