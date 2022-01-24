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
typedef  int /*<<< orphan*/  blockProperties_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 scalar_t__ ZSTDv05_MAGICNUMBER ; 
 scalar_t__ ZSTDv05_blockHeaderSize ; 
 size_t ZSTDv05_frameHeaderSize_min ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC4(const void *src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties;

    /* Frame Header */
    if (srcSize < ZSTDv05_frameHeaderSize_min) return FUNC0(srcSize_wrong);
    if (FUNC1(src) != ZSTDv05_MAGICNUMBER) return FUNC0(prefix_unknown);
    ip += ZSTDv05_frameHeaderSize_min; remainingSize -= ZSTDv05_frameHeaderSize_min;

    /* Loop on each block */
    while (1)
    {
        size_t cBlockSize = FUNC2(ip, remainingSize, &blockProperties);
        if (FUNC3(cBlockSize)) return cBlockSize;

        ip += ZSTDv05_blockHeaderSize;
        remainingSize -= ZSTDv05_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        if (cBlockSize == 0) break;   /* bt_end */

        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return ip - (const BYTE*)src;
}