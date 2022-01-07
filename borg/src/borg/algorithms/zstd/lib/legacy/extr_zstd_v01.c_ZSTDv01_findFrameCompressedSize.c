
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blockProperties_t ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_frameHeaderSize ;
 scalar_t__ ZSTD_magicNumber ;
 scalar_t__ ZSTD_readBE32 (void const*) ;
 size_t ZSTDv01_getcBlockSize (int const*,size_t,int *) ;
 scalar_t__ ZSTDv01_isError (size_t) ;
 int prefix_unknown ;
 int srcSize_wrong ;

size_t ZSTDv01_findFrameCompressedSize(const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    U32 magicNumber;
    blockProperties_t blockProperties;


    if (srcSize < ZSTD_frameHeaderSize+ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
    magicNumber = ZSTD_readBE32(src);
    if (magicNumber != ZSTD_magicNumber) return ERROR(prefix_unknown);
    ip += ZSTD_frameHeaderSize; remainingSize -= ZSTD_frameHeaderSize;


    while (1)
    {
        size_t blockSize = ZSTDv01_getcBlockSize(ip, remainingSize, &blockProperties);
        if (ZSTDv01_isError(blockSize)) return blockSize;

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (blockSize > remainingSize) return ERROR(srcSize_wrong);

        if (blockSize == 0) break;

        ip += blockSize;
        remainingSize -= blockSize;
    }

    return ip - (const BYTE*)src;
}
