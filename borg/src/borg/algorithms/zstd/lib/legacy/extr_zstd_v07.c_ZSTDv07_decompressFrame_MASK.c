#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int blockType; int /*<<< orphan*/  origSize; } ;
typedef  TYPE_2__ blockProperties_t ;
struct TYPE_8__ {scalar_t__ checksumFlag; } ;
struct TYPE_10__ {int /*<<< orphan*/  xxhState; TYPE_1__ fParams; } ;
typedef  TYPE_3__ ZSTDv07_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t ZSTDv07_blockHeaderSize ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const) ; 
 scalar_t__ FUNC3 (TYPE_3__*,void const*,size_t const) ; 
 size_t FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const) ; 
 size_t FUNC5 (void const*,size_t) ; 
 size_t ZSTDv07_frameHeaderSize_min ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*,int,TYPE_2__*) ; 
 scalar_t__ FUNC8 (size_t const) ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC9(ZSTDv07_DCtx* dctx,
                                 void* dst, size_t dstCapacity,
                                 const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* const iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + dstCapacity;
    BYTE* op = ostart;
    size_t remainingSize = srcSize;

    /* check */
    if (srcSize < ZSTDv07_frameHeaderSize_min+ZSTDv07_blockHeaderSize) return FUNC0(srcSize_wrong);

    /* Frame Header */
    {   size_t const frameHeaderSize = FUNC5(src, ZSTDv07_frameHeaderSize_min);
        if (FUNC8(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTDv07_blockHeaderSize) return FUNC0(srcSize_wrong);
        if (FUNC3(dctx, src, frameHeaderSize)) return FUNC0(corruption_detected);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }

    /* Loop on each block */
    while (1) {
        size_t decodedSize;
        blockProperties_t blockProperties;
        size_t const cBlockSize = FUNC7(ip, iend-ip, &blockProperties);
        if (FUNC8(cBlockSize)) return cBlockSize;

        ip += ZSTDv07_blockHeaderSize;
        remainingSize -= ZSTDv07_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case bt_compressed:
            decodedSize = FUNC4(dctx, op, oend-op, ip, cBlockSize);
            break;
        case bt_raw :
            decodedSize = FUNC2(op, oend-op, ip, cBlockSize);
            break;
        case bt_rle :
            decodedSize = FUNC6(op, oend-op, *ip, blockProperties.origSize);
            break;
        case bt_end :
            /* end of frame */
            if (remainingSize) return FUNC0(srcSize_wrong);
            decodedSize = 0;
            break;
        default:
            return FUNC0(GENERIC);   /* impossible */
        }
        if (blockProperties.blockType == bt_end) break;   /* bt_end */

        if (FUNC8(decodedSize)) return decodedSize;
        if (dctx->fParams.checksumFlag) FUNC1(&dctx->xxhState, op, decodedSize);
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}