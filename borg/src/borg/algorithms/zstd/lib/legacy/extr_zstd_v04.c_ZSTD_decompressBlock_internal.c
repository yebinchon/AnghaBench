
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;
typedef int BYTE ;


 size_t ZSTD_decodeLiteralsBlock (int *,void const*,size_t) ;
 size_t ZSTD_decompressSequences (int *,void*,size_t,int const*,size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;

__attribute__((used)) static size_t ZSTD_decompressBlock_internal(ZSTD_DCtx* dctx,
                            void* dst, size_t maxDstSize,
                      const void* src, size_t srcSize)
{

    const BYTE* ip = (const BYTE*)src;


    size_t litCSize = ZSTD_decodeLiteralsBlock(dctx, src, srcSize);
    if (ZSTD_isError(litCSize)) return litCSize;
    ip += litCSize;
    srcSize -= litCSize;

    return ZSTD_decompressSequences(dctx, dst, maxDstSize, ip, srcSize);
}
