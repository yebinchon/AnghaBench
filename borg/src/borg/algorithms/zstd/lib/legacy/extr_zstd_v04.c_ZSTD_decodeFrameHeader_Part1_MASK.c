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
struct TYPE_3__ {size_t headerSize; } ;
typedef  TYPE_1__ ZSTD_DCtx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 scalar_t__ ZSTD_MAGICNUMBER ; 
 size_t ZSTD_frameHeaderSize_min ; 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC2(ZSTD_DCtx* zc, const void* src, size_t srcSize)
{
    U32 magicNumber;
    if (srcSize != ZSTD_frameHeaderSize_min) return FUNC0(srcSize_wrong);
    magicNumber = FUNC1(src);
    if (magicNumber != ZSTD_MAGICNUMBER) return FUNC0(prefix_unknown);
    zc->headerSize = ZSTD_frameHeaderSize_min;
    return zc->headerSize;
}