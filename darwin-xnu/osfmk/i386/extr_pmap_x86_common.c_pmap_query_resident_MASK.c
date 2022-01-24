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
typedef  scalar_t__ uint64_t ;
typedef  int pt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  scalar_t__ mach_vm_size_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int addr64_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ PMAP_NULL ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  PMAP__QUERY_RESIDENT ; 
 int PTE_COMPRESSED ; 
 int PTE_PS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ kernel_pmap ; 
 scalar_t__ max_preemption_latency_tsc ; 
 int pde_mapped_size ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int* FUNC9 (scalar_t__,int) ; 
 int* FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (int) ; 
 size_t FUNC12 (int) ; 
 scalar_t__ FUNC13 () ; 

mach_vm_size_t
FUNC14(
	pmap_t		pmap,
	addr64_t	s64,
	addr64_t	e64,
	mach_vm_size_t	*compressed_bytes_p)
{
	pt_entry_t     *pde;
	pt_entry_t     *spte, *epte;
	addr64_t        l64;
	uint64_t        deadline;
	mach_vm_size_t	resident_bytes;
	mach_vm_size_t	compressed_bytes;
	boolean_t	is_ept;

	FUNC8();

	if (pmap == PMAP_NULL || pmap == kernel_pmap || s64 == e64) {
		if (compressed_bytes_p) {
			*compressed_bytes_p = 0;
		}
		return 0;
	}

	is_ept = FUNC7(pmap);

	FUNC2(FUNC0(PMAP__QUERY_RESIDENT) | DBG_FUNC_START,
	           FUNC5(pmap), FUNC5(s64),
	           FUNC5(e64));

	resident_bytes = 0;
	compressed_bytes = 0;

	FUNC1(pmap);

	deadline = FUNC13() + max_preemption_latency_tsc;

	while (s64 < e64) {
		l64 = (s64 + pde_mapped_size) & ~(pde_mapped_size - 1);
		if (l64 > e64)
			l64 = e64;
		pde = FUNC9(pmap, s64);

		if (pde && (*pde & FUNC4(is_ept))) {
			if (*pde & PTE_PS) {
				/* superpage: not supported */
			} else {
				spte = FUNC10(pmap,
						(s64 & ~(pde_mapped_size - 1)));
				spte = &spte[FUNC12(s64)];
				epte = &spte[FUNC6(l64 - s64)];

				for (; spte < epte; spte++) {
					if (FUNC11(*spte) != 0) {
						resident_bytes += PAGE_SIZE;
					} else if (*spte & PTE_COMPRESSED) {
						compressed_bytes += PAGE_SIZE;
					}
				}

			}
		}
		s64 = l64;

		if (s64 < e64 && FUNC13() >= deadline) {
			FUNC3(pmap);
			FUNC1(pmap);
			deadline = FUNC13() + max_preemption_latency_tsc;
		}
	}

	FUNC3(pmap);

	FUNC2(FUNC0(PMAP__QUERY_RESIDENT) | DBG_FUNC_END,
	           resident_bytes);

	if (compressed_bytes_p) {
		*compressed_bytes_p = compressed_bytes;
	}
	return resident_bytes;
}