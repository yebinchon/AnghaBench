#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_map_address_t ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
struct TYPE_20__ {TYPE_1__* pt_cnt; } ;
struct TYPE_19__ {int /*<<< orphan*/  wired_mem; } ;
struct TYPE_17__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_18__ {TYPE_2__ stats; } ;
struct TYPE_16__ {int /*<<< orphan*/  wiredcnt; } ;
typedef  int /*<<< orphan*/  SInt32 ;
typedef  int /*<<< orphan*/  SInt16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ARM_PTE_TYPE_FAULT ; 
 int ARM_PTE_WIRED ; 
 size_t FUNC1 (int*) ; 
 int /*<<< orphan*/  ISB_SY ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  PMAP__TTE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_3__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC13 (int*) ; 
 TYPE_5__ task_ledgers ; 

__attribute__((used)) static inline void FUNC14(pmap_t pmap, pt_entry_t *pte_p, pt_entry_t pte, vm_map_address_t v)
{
	if (pmap != kernel_pmap && ((pte & ARM_PTE_WIRED) != (*pte_p & ARM_PTE_WIRED)))
	{
		SInt16	*ptd_wiredcnt_ptr = (SInt16 *)&(FUNC13(pte_p)->pt_cnt[FUNC1(pte_p)].wiredcnt);
		if (pte & ARM_PTE_WIRED) {
			FUNC3(1, ptd_wiredcnt_ptr);
			FUNC11(pmap, task_ledgers.wired_mem, PAGE_SIZE);
			FUNC2(1, (SInt32 *) &pmap->stats.wired_count);
		} else {
			FUNC3(-1, ptd_wiredcnt_ptr);
			FUNC12(pmap, task_ledgers.wired_mem, PAGE_SIZE);
			FUNC2(-1, (SInt32 *) &pmap->stats.wired_count);
		}
	}
	if (*pte_p != ARM_PTE_TYPE_FAULT &&
	    !FUNC0(*pte_p)) {
		FUNC9(pte_p, pte);
		FUNC6(pmap, v, v + PAGE_SIZE);
	} else {
		FUNC8(pte_p, pte);
		FUNC10(ISB_SY);
	}

	FUNC5(3, FUNC4(PMAP__TTE), FUNC7(pmap), FUNC7(v), FUNC7(v + PAGE_SIZE), pte);
}