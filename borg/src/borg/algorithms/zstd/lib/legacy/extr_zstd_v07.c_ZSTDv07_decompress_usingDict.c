
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;


 int ZSTDv07_checkContinuity (int *,void*) ;
 int ZSTDv07_decompressBegin_usingDict (int *,void const*,size_t) ;
 size_t ZSTDv07_decompressFrame (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv07_decompress_usingDict(ZSTDv07_DCtx* dctx,
                                 void* dst, size_t dstCapacity,
                                 const void* src, size_t srcSize,
                                 const void* dict, size_t dictSize)
{
    ZSTDv07_decompressBegin_usingDict(dctx, dict, dictSize);
    ZSTDv07_checkContinuity(dctx, dst);
    return ZSTDv07_decompressFrame(dctx, dst, dstCapacity, src, srcSize);
}
