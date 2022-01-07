
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int blockType; } ;
typedef TYPE_2__ blockProperties_t ;
struct TYPE_9__ {int checksumFlag; } ;
struct TYPE_11__ {size_t expected; int stage; size_t headerBuffer; size_t headerSize; int bType; char* previousDstEnd; int xxhState; TYPE_1__ fParams; } ;
typedef TYPE_3__ ZSTDv07_DCtx ;
typedef int U64 ;
typedef int U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 int MEM_readLE32 (void const*) ;
 int XXH64_digest (int *) ;
 int XXH64_update (int *,void*,size_t) ;






 int ZSTDv07_MAGIC_SKIPPABLE_START ;
 void* ZSTDv07_blockHeaderSize ;
 int ZSTDv07_checkContinuity (TYPE_3__*,void*) ;
 size_t ZSTDv07_copyRawBlock (void*,size_t,void const*,size_t) ;
 size_t ZSTDv07_decodeFrameHeader (TYPE_3__*,size_t,size_t) ;
 size_t ZSTDv07_decompressBlock_internal (TYPE_3__*,void*,size_t,void const*,size_t) ;
 size_t ZSTDv07_frameHeaderSize (void const*,size_t) ;
 size_t ZSTDv07_frameHeaderSize_min ;
 size_t ZSTDv07_getcBlockSize (void const*,void*,TYPE_2__*) ;
 int ZSTDv07_isError (size_t const) ;
 size_t ZSTDv07_skippableHeaderSize ;




 int checksum_wrong ;
 int memcpy (size_t,void const*,size_t) ;
 int srcSize_wrong ;

size_t ZSTDv07_decompressContinue(ZSTDv07_DCtx* dctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{

    if (srcSize != dctx->expected) return ERROR(srcSize_wrong);
    if (dstCapacity) ZSTDv07_checkContinuity(dctx, dst);

    switch (dctx->stage)
    {
    case 133 :
        if (srcSize != ZSTDv07_frameHeaderSize_min) return ERROR(srcSize_wrong);
        if ((MEM_readLE32(src) & 0xFFFFFFF0U) == ZSTDv07_MAGIC_SKIPPABLE_START) {
            memcpy(dctx->headerBuffer, src, ZSTDv07_frameHeaderSize_min);
            dctx->expected = ZSTDv07_skippableHeaderSize - ZSTDv07_frameHeaderSize_min;
            dctx->stage = 135;
            return 0;
        }
        dctx->headerSize = ZSTDv07_frameHeaderSize(src, ZSTDv07_frameHeaderSize_min);
        if (ZSTDv07_isError(dctx->headerSize)) return dctx->headerSize;
        memcpy(dctx->headerBuffer, src, ZSTDv07_frameHeaderSize_min);
        if (dctx->headerSize > ZSTDv07_frameHeaderSize_min) {
            dctx->expected = dctx->headerSize - ZSTDv07_frameHeaderSize_min;
            dctx->stage = 136;
            return 0;
        }
        dctx->expected = 0;

    case 136:
        { size_t result;
            memcpy(dctx->headerBuffer + ZSTDv07_frameHeaderSize_min, src, dctx->expected);
            result = ZSTDv07_decodeFrameHeader(dctx, dctx->headerBuffer, dctx->headerSize);
            if (ZSTDv07_isError(result)) return result;
            dctx->expected = ZSTDv07_blockHeaderSize;
            dctx->stage = 137;
            return 0;
        }
    case 137:
        { blockProperties_t bp;
            size_t const cBlockSize = ZSTDv07_getcBlockSize(src, ZSTDv07_blockHeaderSize, &bp);
            if (ZSTDv07_isError(cBlockSize)) return cBlockSize;
            if (bp.blockType == 130) {
                if (dctx->fParams.checksumFlag) {
                    U64 const h64 = XXH64_digest(&dctx->xxhState);
                    U32 const h32 = (U32)(h64>>11) & ((1<<22)-1);
                    const BYTE* const ip = (const BYTE*)src;
                    U32 const check32 = ip[2] + (ip[1] << 8) + ((ip[0] & 0x3F) << 16);
                    if (check32 != h32) return ERROR(checksum_wrong);
                }
                dctx->expected = 0;
                dctx->stage = 133;
            } else {
                dctx->expected = cBlockSize;
                dctx->bType = bp.blockType;
                dctx->stage = 134;
            }
            return 0;
        }
    case 134:
        { size_t rSize;
            switch(dctx->bType)
            {
            case 131:
                rSize = ZSTDv07_decompressBlock_internal(dctx, dst, dstCapacity, src, srcSize);
                break;
            case 129 :
                rSize = ZSTDv07_copyRawBlock(dst, dstCapacity, src, srcSize);
                break;
            case 128 :
                return ERROR(GENERIC);
                break;
            case 130 :
                rSize = 0;
                break;
            default:
                return ERROR(GENERIC);
            }
            dctx->stage = 137;
            dctx->expected = ZSTDv07_blockHeaderSize;
            dctx->previousDstEnd = (char*)dst + rSize;
            if (ZSTDv07_isError(rSize)) return rSize;
            if (dctx->fParams.checksumFlag) XXH64_update(&dctx->xxhState, dst, rSize);
            return rSize;
        }
    case 135:
        { memcpy(dctx->headerBuffer + ZSTDv07_frameHeaderSize_min, src, dctx->expected);
            dctx->expected = MEM_readLE32(dctx->headerBuffer + 4);
            dctx->stage = 132;
            return 0;
        }
    case 132:
        { dctx->expected = 0;
            dctx->stage = 133;
            return 0;
        }
    default:
        return ERROR(GENERIC);
    }
}
