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
typedef  int U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (void const*) ; 
 unsigned long long ZSTD_CONTENTSIZE_ERROR ; 
 size_t ZSTD_FRAMEHEADERSIZE_PREFIX ; 
 int const ZSTD_MAGIC_SKIPPABLE_MASK ; 
 int const ZSTD_MAGIC_SKIPPABLE_START ; 
 size_t FUNC1 (void const*,size_t) ; 
 unsigned long long FUNC2 (void const*,size_t) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 size_t FUNC4 (void const*,size_t) ; 

unsigned long long FUNC5(const void* src, size_t srcSize)
{
    unsigned long long totalDstSize = 0;

    while (srcSize >= ZSTD_FRAMEHEADERSIZE_PREFIX) {
        U32 const magicNumber = FUNC0(src);

        if ((magicNumber & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START) {
            size_t const skippableSize = FUNC4(src, srcSize);
            if (FUNC3(skippableSize))
                return skippableSize;
            if (srcSize < skippableSize) {
                return ZSTD_CONTENTSIZE_ERROR;
            }

            src = (const BYTE *)src + skippableSize;
            srcSize -= skippableSize;
            continue;
        }

        {   unsigned long long const ret = FUNC2(src, srcSize);
            if (ret >= ZSTD_CONTENTSIZE_ERROR) return ret;

            /* check for overflow */
            if (totalDstSize + ret < totalDstSize) return ZSTD_CONTENTSIZE_ERROR;
            totalDstSize += ret;
        }
        {   size_t const frameSrcSize = FUNC1(src, srcSize);
            if (FUNC3(frameSrcSize)) {
                return ZSTD_CONTENTSIZE_ERROR;
            }

            src = (const BYTE *)src + frameSrcSize;
            srcSize -= frameSrcSize;
        }
    }  /* while (srcSize >= ZSTD_frameHeaderSize_prefix) */

    if (srcSize) return ZSTD_CONTENTSIZE_ERROR;

    return totalDstSize;
}