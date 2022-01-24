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
typedef  int vm_offset_t ;
typedef  scalar_t__ tt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_4__ {TYPE_1__* pt_cnt; } ;
struct TYPE_3__ {scalar_t__ refcnt; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 unsigned int PMAP_TT_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*,...) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(
	pmap_t pmap,
	tt_entry_t *ttep,
	unsigned int level)
{
	tt_entry_t tte = *ttep;

	if (tte == 0) {
		FUNC3("pmap_tte_deallocate(): null tt_entry ttep==%p\n", ttep);
	}

	if (((level+1) == PMAP_TT_MAX_LEVEL) && (FUNC4(tte)->pt_cnt[FUNC0(FUNC5(*ttep))].refcnt != 0)) {
		FUNC3("pmap_tte_deallocate(): pmap=%p ttep=%p ptd=%p refcnt=0x%x \n", pmap, ttep,
		       FUNC4(tte), (FUNC4(tte)->pt_cnt[FUNC0(FUNC5(*ttep))].refcnt));
	}

#if	(__ARM_VMSA__ == 7)
	{
		tt_entry_t *ttep_4M = (tt_entry_t *) ((vm_offset_t)ttep & 0xFFFFFFF0);
		unsigned i;

		for (i = 0; i<4; i++, ttep_4M++)
			*ttep_4M = (tt_entry_t) 0;
		FLUSH_PTE_RANGE_STRONG(ttep_4M - 4, ttep_4M);
	}
#else
	*ttep = (tt_entry_t) 0;
	FUNC2(ttep);
#endif
}