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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dstBuffer_null ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC3(void* dst, size_t dstCapacity,
                          const void* src, size_t srcSize)
{
    FUNC0(5, "ZSTD_copyRawBlock");
    if (dst == NULL) {
        if (srcSize == 0) return 0;
        return FUNC1(dstBuffer_null);
    }
    if (srcSize > dstCapacity) return FUNC1(dstSize_tooSmall);
    FUNC2(dst, src, srcSize);
    return srcSize;
}