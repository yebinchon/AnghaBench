
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blockProperties_t ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 scalar_t__ ZSTDv05_MAGICNUMBER ;
 scalar_t__ ZSTDv05_blockHeaderSize ;
 size_t ZSTDv05_frameHeaderSize_min ;
 size_t ZSTDv05_getcBlockSize (int const*,size_t,int *) ;
 scalar_t__ ZSTDv05_isError (size_t) ;
 int prefix_unknown ;
 int srcSize_wrong ;

size_t ZSTDv05_findFrameCompressedSize(const void *src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties;


    if (srcSize < ZSTDv05_frameHeaderSize_min) return ERROR(srcSize_wrong);
    if (MEM_readLE32(src) != ZSTDv05_MAGICNUMBER) return ERROR(prefix_unknown);
    ip += ZSTDv05_frameHeaderSize_min; remainingSize -= ZSTDv05_frameHeaderSize_min;


    while (1)
    {
        size_t cBlockSize = ZSTDv05_getcBlockSize(ip, remainingSize, &blockProperties);
        if (ZSTDv05_isError(cBlockSize)) return cBlockSize;

        ip += ZSTDv05_blockHeaderSize;
        remainingSize -= ZSTDv05_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        if (cBlockSize == 0) break;

        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return ip - (const BYTE*)src;
}
