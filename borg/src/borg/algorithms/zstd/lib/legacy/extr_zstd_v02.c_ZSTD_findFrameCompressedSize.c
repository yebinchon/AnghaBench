
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blockProperties_t ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_frameHeaderSize ;
 size_t ZSTD_getcBlockSize (int const*,size_t,int *) ;
 scalar_t__ ZSTD_isError (size_t) ;
 scalar_t__ ZSTD_magicNumber ;
 int prefix_unknown ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_findFrameCompressedSize(const void *src, size_t srcSize)
{

    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    U32 magicNumber;
    blockProperties_t blockProperties;


    if (srcSize < ZSTD_frameHeaderSize+ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
    magicNumber = MEM_readLE32(src);
    if (magicNumber != ZSTD_magicNumber) return ERROR(prefix_unknown);
    ip += ZSTD_frameHeaderSize; remainingSize -= ZSTD_frameHeaderSize;


    while (1)
    {
        size_t cBlockSize = ZSTD_getcBlockSize(ip, remainingSize, &blockProperties);
        if (ZSTD_isError(cBlockSize)) return cBlockSize;

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        if (cBlockSize == 0) break;

        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return ip - (const BYTE*)src;
}
