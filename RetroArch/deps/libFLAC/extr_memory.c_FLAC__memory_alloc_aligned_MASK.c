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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 void* FUNC2 (size_t,long) ; 

void *FUNC3(size_t bytes, void **aligned_address)
{
	void *x;

	FUNC0(0 != aligned_address);

#ifdef FLAC__ALIGN_MALLOC_DATA
	/* align on 32-byte (256-bit) boundary */
	x = safe_malloc_add_2op_(bytes, /*+*/31L);
	*aligned_address = (void*)(((uintptr_t)x + 31L) & -32L);
#else
	x = FUNC1(bytes);
	*aligned_address = x;
#endif
	return x;
}