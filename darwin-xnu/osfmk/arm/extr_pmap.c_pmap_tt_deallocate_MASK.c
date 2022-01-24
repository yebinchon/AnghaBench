#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct TYPE_17__ {struct TYPE_17__* next; } ;
typedef  TYPE_3__ tt_free_entry_t ;
typedef  int /*<<< orphan*/  tt_entry_t ;
struct TYPE_18__ {TYPE_2__* pt_cnt; TYPE_1__* pt_map; } ;
typedef  TYPE_4__ pt_desc_t ;
typedef  TYPE_5__* pmap_t ;
struct TYPE_19__ {int /*<<< orphan*/ * tt_entry_free; } ;
struct TYPE_16__ {scalar_t__ refcnt; } ;
struct TYPE_15__ {scalar_t__ va; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_MASK ; 
 unsigned int PAGE_RATIO ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 unsigned int PMAP_TT_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ PT_DESC_REFCOUNT ; 
 int /*<<< orphan*/  inuse_kernel_ptepages_count ; 
 int /*<<< orphan*/  inuse_kernel_ttepages_count ; 
 int /*<<< orphan*/  inuse_user_ptepages_count ; 
 int /*<<< orphan*/  inuse_user_ttepages_count ; 
 TYPE_5__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_4__* FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13(
	pmap_t pmap,
	tt_entry_t *ttp,
	unsigned int level)
{
	pt_desc_t *ptdp;
	unsigned pt_acc_cnt;
	unsigned i, max_pt_index = PAGE_RATIO;
	vm_offset_t	free_page=0;

	FUNC2(pmap);

	ptdp = FUNC12((vm_offset_t)ttp);

	ptdp->pt_map[FUNC0(ttp)].va = (vm_offset_t)-1;

	if ((level < PMAP_TT_MAX_LEVEL) && (ptdp->pt_cnt[FUNC0(ttp)].refcnt == PT_DESC_REFCOUNT))
		ptdp->pt_cnt[FUNC0(ttp)].refcnt = 0;

	if (ptdp->pt_cnt[FUNC0(ttp)].refcnt != 0)
		FUNC8("pmap_tt_deallocate(): ptdp %p, count %d\n", ptdp, ptdp->pt_cnt[FUNC0(ttp)].refcnt);

	ptdp->pt_cnt[FUNC0(ttp)].refcnt = 0;

	for (i = 0, pt_acc_cnt = 0 ; i < max_pt_index ; i++)
		pt_acc_cnt += ptdp->pt_cnt[i].refcnt;

	if (pt_acc_cnt == 0) {
		tt_free_entry_t *tt_free_list = (tt_free_entry_t *)&pmap->tt_entry_free;
		unsigned pt_free_entry_cnt = 1;

		while (pt_free_entry_cnt < max_pt_index && tt_free_list) {
			tt_free_entry_t *tt_free_list_next;

			tt_free_list_next = tt_free_list->next;
			if ((((vm_offset_t)tt_free_list_next) - ((vm_offset_t)ttp & ~PAGE_MASK)) < PAGE_SIZE) {
				pt_free_entry_cnt++;
			}
			tt_free_list = tt_free_list_next;
		}
		if (pt_free_entry_cnt == max_pt_index) {
			tt_free_entry_t *tt_free_list_cur;

			free_page = (vm_offset_t)ttp & ~PAGE_MASK;
			tt_free_list = (tt_free_entry_t *)&pmap->tt_entry_free;
			tt_free_list_cur = (tt_free_entry_t *)&pmap->tt_entry_free;

			while (tt_free_list_cur) {
				tt_free_entry_t *tt_free_list_next;

				tt_free_list_next = tt_free_list_cur->next;
				if ((((vm_offset_t)tt_free_list_next) - free_page) < PAGE_SIZE) {
					tt_free_list->next = tt_free_list_next->next;
				} else {
					tt_free_list = tt_free_list_next;
				}
				tt_free_list_cur = tt_free_list_next;
			}
		} else {
			((tt_free_entry_t *)ttp)->next = (tt_free_entry_t *)pmap->tt_entry_free;
			pmap->tt_entry_free = ttp;
		}
	} else {
		((tt_free_entry_t *)ttp)->next = (tt_free_entry_t *)pmap->tt_entry_free;
		pmap->tt_entry_free = ttp;
	}

	FUNC3(pmap);

	if (free_page != 0) {

		FUNC11(FUNC12((vm_offset_t)free_page));
		*(pt_desc_t **)FUNC7(FUNC6(FUNC5(free_page))) = NULL;
		FUNC9(FUNC5(free_page), PAGE_SIZE);
		if (level < PMAP_TT_MAX_LEVEL)
			FUNC1(-1, (pmap == kernel_pmap ? &inuse_kernel_ttepages_count : &inuse_user_ttepages_count));
		else
			FUNC1(-1, (pmap == kernel_pmap ? &inuse_kernel_ptepages_count : &inuse_user_ptepages_count));
		FUNC4(pmap, PAGE_SIZE);
		FUNC10(pmap, PAGE_SIZE);
	}
}