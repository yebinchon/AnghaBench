
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blockType; size_t origSize; } ;
typedef TYPE_1__ blockProperties_t ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_decompressLiterals (void*,void*,size_t,int const*,size_t) ;
 size_t ZSTDv01_getcBlockSize (void const*,size_t,TYPE_1__*) ;
 scalar_t__ ZSTDv01_isError (size_t) ;




 int dstSize_tooSmall ;
 int memset (int * const,int const,size_t) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv01_decodeLiteralsBlock(void* ctx,
                                void* dst, size_t maxDstSize,
                          const BYTE** litStart, size_t* litSize,
                          const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* ip = istart;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + maxDstSize;
    blockProperties_t litbp;

    size_t litcSize = ZSTDv01_getcBlockSize(src, srcSize, &litbp);
    if (ZSTDv01_isError(litcSize)) return litcSize;
    if (litcSize > srcSize - ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
    ip += ZSTD_blockHeaderSize;

    switch(litbp.blockType)
    {
    case 129:
        *litStart = ip;
        ip += litcSize;
        *litSize = litcSize;
        break;
    case 128:
        {
            size_t rleSize = litbp.origSize;
            if (rleSize>maxDstSize) return ERROR(dstSize_tooSmall);
            if (!srcSize) return ERROR(srcSize_wrong);
            memset(oend - rleSize, *ip, rleSize);
            *litStart = oend - rleSize;
            *litSize = rleSize;
            ip++;
            break;
        }
    case 131:
        {
            size_t decodedLitSize = ZSTD_decompressLiterals(ctx, dst, maxDstSize, ip, litcSize);
            if (ZSTDv01_isError(decodedLitSize)) return decodedLitSize;
            *litStart = oend - decodedLitSize;
            *litSize = decodedLitSize;
            ip += litcSize;
            break;
        }
    case 130:
    default:
        return ERROR(GENERIC);
    }

    return ip-istart;
}
