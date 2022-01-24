#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int blockType; } ;
typedef  TYPE_2__ blockProperties_t ;
struct TYPE_9__ {int /*<<< orphan*/  checksumFlag; } ;
struct TYPE_11__ {size_t expected; int stage; size_t headerBuffer; size_t headerSize; int bType; char* previousDstEnd; int /*<<< orphan*/  xxhState; TYPE_1__ fParams; } ;
typedef  TYPE_3__ ZSTDv07_DCtx ;
typedef  int U64 ;
typedef  int U32 ;
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int FUNC1 (void const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
#define  ZSTDds_decodeBlockHeader 137 
#define  ZSTDds_decodeFrameHeader 136 
#define  ZSTDds_decodeSkippableHeader 135 
#define  ZSTDds_decompressBlock 134 
#define  ZSTDds_getFrameHeaderSize 133 
#define  ZSTDds_skipFrame 132 
 int ZSTDv07_MAGIC_SKIPPABLE_START ; 
 void* ZSTDv07_blockHeaderSize ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,void*) ; 
 size_t FUNC5 (void*,size_t,void const*,size_t) ; 
 size_t FUNC6 (TYPE_3__*,size_t,size_t) ; 
 size_t FUNC7 (TYPE_3__*,void*,size_t,void const*,size_t) ; 
 size_t FUNC8 (void const*,size_t) ; 
 size_t ZSTDv07_frameHeaderSize_min ; 
 size_t FUNC9 (void const*,void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (size_t const) ; 
 size_t ZSTDv07_skippableHeaderSize ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  checksum_wrong ; 
 int /*<<< orphan*/  FUNC11 (size_t,void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC12(ZSTDv07_DCtx* dctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    /* Sanity check */
    if (srcSize != dctx->expected) return FUNC0(srcSize_wrong);
    if (dstCapacity) FUNC4(dctx, dst);

    switch (dctx->stage)
    {
    case ZSTDds_getFrameHeaderSize :
        if (srcSize != ZSTDv07_frameHeaderSize_min) return FUNC0(srcSize_wrong);   /* impossible */
        if ((FUNC1(src) & 0xFFFFFFF0U) == ZSTDv07_MAGIC_SKIPPABLE_START) {
            FUNC11(dctx->headerBuffer, src, ZSTDv07_frameHeaderSize_min);
            dctx->expected = ZSTDv07_skippableHeaderSize - ZSTDv07_frameHeaderSize_min; /* magic number + skippable frame length */
            dctx->stage = ZSTDds_decodeSkippableHeader;
            return 0;
        }
        dctx->headerSize = FUNC8(src, ZSTDv07_frameHeaderSize_min);
        if (FUNC10(dctx->headerSize)) return dctx->headerSize;
        FUNC11(dctx->headerBuffer, src, ZSTDv07_frameHeaderSize_min);
        if (dctx->headerSize > ZSTDv07_frameHeaderSize_min) {
            dctx->expected = dctx->headerSize - ZSTDv07_frameHeaderSize_min;
            dctx->stage = ZSTDds_decodeFrameHeader;
            return 0;
        }
        dctx->expected = 0;   /* not necessary to copy more */
	/* fall-through */
    case ZSTDds_decodeFrameHeader:
        {   size_t result;
            FUNC11(dctx->headerBuffer + ZSTDv07_frameHeaderSize_min, src, dctx->expected);
            result = FUNC6(dctx, dctx->headerBuffer, dctx->headerSize);
            if (FUNC10(result)) return result;
            dctx->expected = ZSTDv07_blockHeaderSize;
            dctx->stage = ZSTDds_decodeBlockHeader;
            return 0;
        }
    case ZSTDds_decodeBlockHeader:
        {   blockProperties_t bp;
            size_t const cBlockSize = FUNC9(src, ZSTDv07_blockHeaderSize, &bp);
            if (FUNC10(cBlockSize)) return cBlockSize;
            if (bp.blockType == bt_end) {
                if (dctx->fParams.checksumFlag) {
                    U64 const h64 = FUNC2(&dctx->xxhState);
                    U32 const h32 = (U32)(h64>>11) & ((1<<22)-1);
                    const BYTE* const ip = (const BYTE*)src;
                    U32 const check32 = ip[2] + (ip[1] << 8) + ((ip[0] & 0x3F) << 16);
                    if (check32 != h32) return FUNC0(checksum_wrong);
                }
                dctx->expected = 0;
                dctx->stage = ZSTDds_getFrameHeaderSize;
            } else {
                dctx->expected = cBlockSize;
                dctx->bType = bp.blockType;
                dctx->stage = ZSTDds_decompressBlock;
            }
            return 0;
        }
    case ZSTDds_decompressBlock:
        {   size_t rSize;
            switch(dctx->bType)
            {
            case bt_compressed:
                rSize = FUNC7(dctx, dst, dstCapacity, src, srcSize);
                break;
            case bt_raw :
                rSize = FUNC5(dst, dstCapacity, src, srcSize);
                break;
            case bt_rle :
                return FUNC0(GENERIC);   /* not yet handled */
                break;
            case bt_end :   /* should never happen (filtered at phase 1) */
                rSize = 0;
                break;
            default:
                return FUNC0(GENERIC);   /* impossible */
            }
            dctx->stage = ZSTDds_decodeBlockHeader;
            dctx->expected = ZSTDv07_blockHeaderSize;
            dctx->previousDstEnd = (char*)dst + rSize;
            if (FUNC10(rSize)) return rSize;
            if (dctx->fParams.checksumFlag) FUNC3(&dctx->xxhState, dst, rSize);
            return rSize;
        }
    case ZSTDds_decodeSkippableHeader:
        {   FUNC11(dctx->headerBuffer + ZSTDv07_frameHeaderSize_min, src, dctx->expected);
            dctx->expected = FUNC1(dctx->headerBuffer + 4);
            dctx->stage = ZSTDds_skipFrame;
            return 0;
        }
    case ZSTDds_skipFrame:
        {   dctx->expected = 0;
            dctx->stage = ZSTDds_getFrameHeaderSize;
            return 0;
        }
    default:
        return FUNC0(GENERIC);   /* impossible */
    }
}