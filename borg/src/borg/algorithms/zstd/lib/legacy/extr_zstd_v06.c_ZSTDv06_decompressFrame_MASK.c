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
struct TYPE_3__ {int member_0; int blockType; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ blockProperties_t ;
typedef  int /*<<< orphan*/  ZSTDv06_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t ZSTDv06_blockHeaderSize ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void const*,size_t const) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const) ; 
 size_t FUNC4 (void const*,size_t) ; 
 size_t ZSTDv06_frameHeaderSize_min ; 
 size_t FUNC5 (int /*<<< orphan*/  const*,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (size_t const) ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC7(ZSTDv06_DCtx* dctx,
                                 void* dst, size_t dstCapacity,
                                 const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* const iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + dstCapacity;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties = { bt_compressed, 0 };

    /* check */
    if (srcSize < ZSTDv06_frameHeaderSize_min+ZSTDv06_blockHeaderSize) return FUNC0(srcSize_wrong);

    /* Frame Header */
    {   size_t const frameHeaderSize = FUNC4(src, ZSTDv06_frameHeaderSize_min);
        if (FUNC6(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTDv06_blockHeaderSize) return FUNC0(srcSize_wrong);
        if (FUNC2(dctx, src, frameHeaderSize)) return FUNC0(corruption_detected);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }

    /* Loop on each block */
    while (1) {
        size_t decodedSize=0;
        size_t const cBlockSize = FUNC5(ip, iend-ip, &blockProperties);
        if (FUNC6(cBlockSize)) return cBlockSize;

        ip += ZSTDv06_blockHeaderSize;
        remainingSize -= ZSTDv06_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case bt_compressed:
            decodedSize = FUNC3(dctx, op, oend-op, ip, cBlockSize);
            break;
        case bt_raw :
            decodedSize = FUNC1(op, oend-op, ip, cBlockSize);
            break;
        case bt_rle :
            return FUNC0(GENERIC);   /* not yet supported */
            break;
        case bt_end :
            /* end of frame */
            if (remainingSize) return FUNC0(srcSize_wrong);
            break;
        default:
            return FUNC0(GENERIC);   /* impossible */
        }
        if (cBlockSize == 0) break;   /* bt_end */

        if (FUNC6(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}