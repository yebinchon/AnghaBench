
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 int ZSTDv06_checkContinuity (int *,void*) ;
 size_t ZSTDv06_decompressBlock_internal (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv06_decompressBlock(ZSTDv06_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    ZSTDv06_checkContinuity(dctx, dst);
    return ZSTDv06_decompressBlock_internal(dctx, dst, dstCapacity, src, srcSize);
}
