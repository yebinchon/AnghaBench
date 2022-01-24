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
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ blockProperties_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 scalar_t__ ZSTDv06_MAGICNUMBER ; 
 size_t const ZSTDv06_blockHeaderSize ; 
 size_t FUNC2 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTDv06_frameHeaderSize_min ; 
 size_t FUNC3 (int /*<<< orphan*/  const*,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC4 (size_t const) ; 
 int /*<<< orphan*/  bt_compressed ; 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC5(const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties = { bt_compressed, 0 };

    /* Frame Header */
    {   size_t const frameHeaderSize = FUNC2(src, ZSTDv06_frameHeaderSize_min);
        if (FUNC4(frameHeaderSize)) return frameHeaderSize;
        if (FUNC1(src) != ZSTDv06_MAGICNUMBER) return FUNC0(prefix_unknown);
        if (srcSize < frameHeaderSize+ZSTDv06_blockHeaderSize) return FUNC0(srcSize_wrong);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }

    /* Loop on each block */
    while (1) {
        size_t const cBlockSize = FUNC3(ip, remainingSize, &blockProperties);
        if (FUNC4(cBlockSize)) return cBlockSize;

        ip += ZSTDv06_blockHeaderSize;
        remainingSize -= ZSTDv06_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        if (cBlockSize == 0) break;   /* bt_end */

        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return ip - (const BYTE*)src;
}