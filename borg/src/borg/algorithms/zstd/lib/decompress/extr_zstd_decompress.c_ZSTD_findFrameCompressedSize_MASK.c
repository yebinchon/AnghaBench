#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lastBlock; } ;
typedef  TYPE_1__ blockProperties_t ;
struct TYPE_6__ {scalar_t__ checksumFlag; scalar_t__ headerSize; } ;
typedef  TYPE_2__ ZSTD_frameHeader ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void const*) ; 
 int ZSTD_MAGIC_SKIPPABLE_MASK ; 
 int ZSTD_MAGIC_SKIPPABLE_START ; 
 size_t ZSTD_SKIPPABLEHEADERSIZE ; 
 size_t const ZSTD_blockHeaderSize ; 
 size_t FUNC2 (void const*,size_t) ; 
 size_t FUNC3 (TYPE_2__*,void const*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 scalar_t__ FUNC6 (void const*,size_t) ; 
 size_t FUNC7 (void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC8(const void *src, size_t srcSize)
{
#if defined(ZSTD_LEGACY_SUPPORT) && (ZSTD_LEGACY_SUPPORT >= 1)
    if (ZSTD_isLegacy(src, srcSize))
        return ZSTD_findFrameCompressedSizeLegacy(src, srcSize);
#endif
    if ( (srcSize >= ZSTD_SKIPPABLEHEADERSIZE)
      && (FUNC1(src) & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START ) {
        return FUNC7(src, srcSize);
    } else {
        const BYTE* ip = (const BYTE*)src;
        const BYTE* const ipstart = ip;
        size_t remainingSize = srcSize;
        ZSTD_frameHeader zfh;

        /* Extract Frame Header */
        {   size_t const ret = FUNC3(&zfh, src, srcSize);
            if (FUNC5(ret)) return ret;
            if (ret > 0) return FUNC0(srcSize_wrong);
        }

        ip += zfh.headerSize;
        remainingSize -= zfh.headerSize;

        /* Loop on each block */
        while (1) {
            blockProperties_t blockProperties;
            size_t const cBlockSize = FUNC4(ip, remainingSize, &blockProperties);
            if (FUNC5(cBlockSize)) return cBlockSize;

            if (ZSTD_blockHeaderSize + cBlockSize > remainingSize)
                return FUNC0(srcSize_wrong);

            ip += ZSTD_blockHeaderSize + cBlockSize;
            remainingSize -= ZSTD_blockHeaderSize + cBlockSize;

            if (blockProperties.lastBlock) break;
        }

        if (zfh.checksumFlag) {   /* Final frame content checksum */
            if (remainingSize < 4) return FUNC0(srcSize_wrong);
            ip += 4;
        }

        return ip - ipstart;
    }
}