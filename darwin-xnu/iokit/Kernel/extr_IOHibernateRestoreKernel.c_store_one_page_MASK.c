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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  WK_word ;

/* Variables and functions */
 int /*<<< orphan*/  DEST_COPY_AREA ; 
 int PAGE_SIZE ; 
 int WKdm_SCRATCH_BUF_SIZE_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static uint32_t
FUNC6(uint32_t procFlags, uint32_t * src, uint32_t compressedSize, 
		uint32_t * buffer, uint32_t ppnum)
{
	uint64_t dst = FUNC5(ppnum);
	uint8_t scratch[WKdm_SCRATCH_BUF_SIZE_INTERNAL] __attribute__ ((aligned (16)));

	if (compressedSize != PAGE_SIZE)
	{
		dst = FUNC4(DEST_COPY_AREA, dst);
		if (compressedSize != 4) FUNC0((WK_word*) src, (WK_word*)(uintptr_t)dst, (WK_word*) &scratch[0], compressedSize);
		else
		{
			size_t i;
			uint32_t s, *d;

			s = *src;
			d = (uint32_t *)(uintptr_t)dst;
            if (!s) FUNC1((void *) dst, PAGE_SIZE);
            else    for (i = 0; i < (PAGE_SIZE / sizeof(int32_t)); i++) *d++ = s;
		}
	}
	else
	{
		dst = FUNC2((uint64_t) (uintptr_t) src, dst, PAGE_SIZE, procFlags);
	}

	return FUNC3((uint8_t *)(uintptr_t)dst, ppnum);
}