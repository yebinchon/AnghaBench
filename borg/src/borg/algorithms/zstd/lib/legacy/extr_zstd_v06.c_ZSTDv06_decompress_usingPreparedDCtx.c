
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 int ZSTDv06_checkContinuity (int *,void*) ;
 int ZSTDv06_copyDCtx (int *,int const*) ;
 size_t ZSTDv06_decompressFrame (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv06_decompress_usingPreparedDCtx(ZSTDv06_DCtx* dctx, const ZSTDv06_DCtx* refDCtx,
                                         void* dst, size_t dstCapacity,
                                   const void* src, size_t srcSize)
{
    ZSTDv06_copyDCtx(dctx, refDCtx);
    ZSTDv06_checkContinuity(dctx, dst);
    return ZSTDv06_decompressFrame(dctx, dst, dstCapacity, src, srcSize);
}
