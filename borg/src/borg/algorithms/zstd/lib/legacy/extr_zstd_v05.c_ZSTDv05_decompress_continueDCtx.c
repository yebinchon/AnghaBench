
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blockType; } ;
typedef TYPE_1__ blockProperties_t ;
typedef int blockProperties ;
typedef int ZSTDv05_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t ZSTDv05_blockHeaderSize ;
 size_t ZSTDv05_copyRawBlock (int *,int,int const*,size_t) ;
 size_t ZSTDv05_decodeFrameHeader_Part1 (int *,void const*,size_t) ;
 size_t ZSTDv05_decodeFrameHeader_Part2 (int *,void const*,size_t) ;
 size_t ZSTDv05_decompressBlock_internal (int *,int *,int,int const*,size_t) ;
 size_t ZSTDv05_frameHeaderSize_min ;
 size_t ZSTDv05_getcBlockSize (int const*,int,TYPE_1__*) ;
 scalar_t__ ZSTDv05_isError (size_t) ;




 int memset (TYPE_1__*,int ,int) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv05_decompress_continueDCtx(ZSTDv05_DCtx* dctx,
                                 void* dst, size_t maxDstSize,
                                 const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties;
    memset(&blockProperties, 0, sizeof(blockProperties));


    { size_t frameHeaderSize;
        if (srcSize < ZSTDv05_frameHeaderSize_min+ZSTDv05_blockHeaderSize) return ERROR(srcSize_wrong);
        frameHeaderSize = ZSTDv05_decodeFrameHeader_Part1(dctx, src, ZSTDv05_frameHeaderSize_min);
        if (ZSTDv05_isError(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTDv05_blockHeaderSize) return ERROR(srcSize_wrong);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
        frameHeaderSize = ZSTDv05_decodeFrameHeader_Part2(dctx, src, frameHeaderSize);
        if (ZSTDv05_isError(frameHeaderSize)) return frameHeaderSize;
    }


    while (1)
    {
        size_t decodedSize=0;
        size_t cBlockSize = ZSTDv05_getcBlockSize(ip, iend-ip, &blockProperties);
        if (ZSTDv05_isError(cBlockSize)) return cBlockSize;

        ip += ZSTDv05_blockHeaderSize;
        remainingSize -= ZSTDv05_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case 131:
            decodedSize = ZSTDv05_decompressBlock_internal(dctx, op, oend-op, ip, cBlockSize);
            break;
        case 129 :
            decodedSize = ZSTDv05_copyRawBlock(op, oend-op, ip, cBlockSize);
            break;
        case 128 :
            return ERROR(GENERIC);
            break;
        case 130 :

            if (remainingSize) return ERROR(srcSize_wrong);
            break;
        default:
            return ERROR(GENERIC);
        }
        if (cBlockSize == 0) break;

        if (ZSTDv05_isError(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}
