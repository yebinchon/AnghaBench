#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int blockType; } ;
typedef  TYPE_1__ blockProperties_t ;
struct TYPE_11__ {char const* dictEnd; char const* previousDstEnd; char const* vBase; char const* base; } ;
typedef  TYPE_2__ ZSTD_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t ZSTD_blockHeaderSize ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (TYPE_2__*,void const*,size_t) ; 
 size_t FUNC3 (TYPE_2__*,void const*,size_t) ; 
 size_t FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void const*,size_t) ; 
 size_t ZSTD_frameHeaderSize_min ; 
 size_t FUNC6 (int /*<<< orphan*/  const*,int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC9(ZSTD_DCtx* ctx,
                                 void* dst, size_t maxDstSize,
                                 const void* src, size_t srcSize,
                                 const void* dict, size_t dictSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties;

    /* init */
    FUNC8(ctx);
    if (dict)
    {
        FUNC5(ctx, dict, dictSize);
        ctx->dictEnd = ctx->previousDstEnd;
        ctx->vBase = (const char*)dst - ((const char*)(ctx->previousDstEnd) - (const char*)(ctx->base));
        ctx->base = dst;
    }
    else
    {
        ctx->vBase = ctx->base = ctx->dictEnd = dst;
    }

    /* Frame Header */
    {
        size_t frameHeaderSize;
        if (srcSize < ZSTD_frameHeaderSize_min+ZSTD_blockHeaderSize) return FUNC0(srcSize_wrong);
        frameHeaderSize = FUNC2(ctx, src, ZSTD_frameHeaderSize_min);
        if (FUNC7(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTD_blockHeaderSize) return FUNC0(srcSize_wrong);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
        frameHeaderSize = FUNC3(ctx, src, frameHeaderSize);
        if (FUNC7(frameHeaderSize)) return frameHeaderSize;
    }

    /* Loop on each block */
    while (1)
    {
        size_t decodedSize=0;
        size_t cBlockSize = FUNC6(ip, iend-ip, &blockProperties);
        if (FUNC7(cBlockSize)) return cBlockSize;

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case bt_compressed:
            decodedSize = FUNC4(ctx, op, oend-op, ip, cBlockSize);
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

        if (FUNC7(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}