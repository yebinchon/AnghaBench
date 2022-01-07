
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ blockProperties_t ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 scalar_t__ ZSTDv06_MAGICNUMBER ;
 size_t const ZSTDv06_blockHeaderSize ;
 size_t ZSTDv06_frameHeaderSize (void const*,int ) ;
 int ZSTDv06_frameHeaderSize_min ;
 size_t ZSTDv06_getcBlockSize (int const*,size_t,TYPE_1__*) ;
 scalar_t__ ZSTDv06_isError (size_t const) ;
 int bt_compressed ;
 int prefix_unknown ;
 int srcSize_wrong ;

size_t ZSTDv06_findFrameCompressedSize(const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties = { bt_compressed, 0 };


    { size_t const frameHeaderSize = ZSTDv06_frameHeaderSize(src, ZSTDv06_frameHeaderSize_min);
        if (ZSTDv06_isError(frameHeaderSize)) return frameHeaderSize;
        if (MEM_readLE32(src) != ZSTDv06_MAGICNUMBER) return ERROR(prefix_unknown);
        if (srcSize < frameHeaderSize+ZSTDv06_blockHeaderSize) return ERROR(srcSize_wrong);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }


    while (1) {
        size_t const cBlockSize = ZSTDv06_getcBlockSize(ip, remainingSize, &blockProperties);
        if (ZSTDv06_isError(cBlockSize)) return cBlockSize;

        ip += ZSTDv06_blockHeaderSize;
        remainingSize -= ZSTDv06_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        if (cBlockSize == 0) break;

        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return ip - (const BYTE*)src;
}
