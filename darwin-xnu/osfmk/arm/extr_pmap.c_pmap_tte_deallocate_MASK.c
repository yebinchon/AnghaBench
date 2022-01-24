#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int tt_entry_t ;
typedef  int pt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pmap_paddr_t ;
struct TYPE_3__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int ARM_PGBYTES ; 
 int ARM_PGMASK ; 
 scalar_t__ FUNC0 (int) ; 
 int ARM_PTE_TYPE_FAULT ; 
 int ARM_PTE_TYPE_MASK ; 
 int ARM_TTE_TYPE_MASK ; 
 int ARM_TTE_TYPE_TABLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,scalar_t__,int*,...) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*,unsigned int) ; 
 TYPE_1__* FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(
	pmap_t pmap,
	tt_entry_t *ttep,
	unsigned int level)
{
	pmap_paddr_t pa;
	tt_entry_t tte;

	FUNC1(pmap);

	tte = *ttep;

#if     MACH_ASSERT
	if (tte_get_ptd(tte)->pmap != pmap) {
		panic("pmap_tte_deallocate(): ptd=%p ptd->pmap=%p pmap=%p \n",
		      tte_get_ptd(tte), tte_get_ptd(tte)->pmap, pmap);
	}
#endif

	FUNC7(pmap, ttep, level);

	if ((tte & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_TABLE) {
#if	MACH_ASSERT
		{
			pt_entry_t	*pte_p = ((pt_entry_t *) (ttetokv(tte) & ~ARM_PGMASK));
			unsigned	i;

			for (i = 0; i < (ARM_PGBYTES / sizeof(*pte_p)); i++,pte_p++) {
				if (ARM_PTE_IS_COMPRESSED(*pte_p)) {
					panic("pmap_tte_deallocate: tte=0x%llx pmap=%p, pte_p=%p, pte=0x%llx compressed\n",
					      (uint64_t)tte, pmap, pte_p, (uint64_t)(*pte_p));
				} else if (((*pte_p) & ARM_PTE_TYPE_MASK) != ARM_PTE_TYPE_FAULT) {
					panic("pmap_tte_deallocate: tte=0x%llx pmap=%p, pte_p=%p, pte=0x%llx\n",
					      (uint64_t)tte, pmap, pte_p, (uint64_t)(*pte_p));
				}
			}
		}
#endif
		FUNC3(pmap);

		/* Clear any page offset: we mean to free the whole page, but armv7 TTEs may only be
		 * aligned on 1K boundaries.  We clear the surrounding "chunk" of 4 TTEs above. */
		pa = FUNC9(tte) & ~ARM_PGMASK;
		FUNC6(pmap, (tt_entry_t *) FUNC5(pa), level+1);
		FUNC2(pmap);
	}
}