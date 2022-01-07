
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t ZSTDv06_BLOCKSIZE_MAX ;
 size_t ZSTDv06_decodeLiteralsBlock (int *,void const*,size_t) ;
 size_t ZSTDv06_decompressSequences (int *,void*,size_t,int const*,size_t) ;
 scalar_t__ ZSTDv06_isError (size_t const) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv06_decompressBlock_internal(ZSTDv06_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;

    if (srcSize >= ZSTDv06_BLOCKSIZE_MAX) return ERROR(srcSize_wrong);


    { size_t const litCSize = ZSTDv06_decodeLiteralsBlock(dctx, src, srcSize);
        if (ZSTDv06_isError(litCSize)) return litCSize;
        ip += litCSize;
        srcSize -= litCSize;
    }
    return ZSTDv06_decompressSequences(dctx, dst, dstCapacity, ip, srcSize);
}
