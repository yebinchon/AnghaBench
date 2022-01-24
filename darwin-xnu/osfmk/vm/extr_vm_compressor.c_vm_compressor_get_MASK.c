#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int pmap_paddr_t ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__* c_slot_mapping_t ;
struct TYPE_5__ {scalar_t__ he_data; } ;
struct TYPE_4__ {scalar_t__ s_cseg; size_t s_cindx; } ;

/* Variables and functions */
 int C_KEEP ; 
 scalar_t__ C_SV_CSEG_ID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  c_segment_pages_compressed ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 TYPE_2__* c_segment_sv_hash_table ; 
 int /*<<< orphan*/  c_segment_svp_nonzero_decompressions ; 
 int /*<<< orphan*/  c_segment_svp_zero_decompressions ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int) ; 

int
FUNC6(ppnum_t pn, int *slot, int flags)
{
	c_slot_mapping_t  slot_ptr;
	char	*dst;
	int	zeroslot = 1;
	int	retval;

#if __x86_64__
	dst = FUNC1((uint64_t)pn << (uint64_t)PAGE_SHIFT);
#elif __arm__ || __arm64__
	dst = (char *) phystokv((pmap_paddr_t)pn << PAGE_SHIFT);
#else
#error "unsupported architecture"
#endif
	slot_ptr = (c_slot_mapping_t)slot;

	if (slot_ptr->s_cseg == C_SV_CSEG_ID) {
		int32_t		data;
		int32_t		*dptr;

		/*
		 * page was populated with a single value
		 * that found a home in our hash table
		 * grab that value from the hash and populate the page
		 * that we need to populate the page with
		 */
		dptr = (int32_t *)(uintptr_t)dst;
		data = c_segment_sv_hash_table[slot_ptr->s_cindx].he_data;
#if __x86_64__
		FUNC4(dptr, data, PAGE_SIZE / sizeof(int32_t));
#else
		{
		int		i;

		for (i = 0; i < (int)(PAGE_SIZE / sizeof(int32_t)); i++)
			*dptr++ = data;
		}
#endif
		if ( !(flags & C_KEEP)) {
			FUNC3(slot_ptr->s_cindx);

			FUNC0(-1, &c_segment_pages_compressed);
			*slot = 0;
		}
		if (data)
			FUNC0(1, &c_segment_svp_nonzero_decompressions);
		else
			FUNC0(1, &c_segment_svp_zero_decompressions);

		return (0);
	}

	retval = FUNC2(dst, slot_ptr, flags, &zeroslot);

	/*
	 * zeroslot will be set to 0 by c_decompress_page if (flags & C_KEEP)
	 * or (flags & C_DONT_BLOCK) and we found 'c_busy' or 'C_SEG_IS_ONDISK' to be TRUE
	 */
	if (zeroslot) {
		*slot = 0;
	}
	/*
	 * returns 0 if we successfully decompressed a page from a segment already in memory
	 * returns 1 if we had to first swap in the segment, before successfully decompressing the page
	 * returns -1 if we encountered an error swapping in the segment - decompression failed
	 * returns -2 if (flags & C_DONT_BLOCK) and we found 'c_busy' or 'C_SEG_IS_ONDISK' to be true
	 */
	return (retval);
}