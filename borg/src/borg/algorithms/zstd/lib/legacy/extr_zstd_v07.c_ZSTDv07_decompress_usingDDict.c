
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refContext; } ;
typedef TYPE_1__ ZSTDv07_DDict ;
typedef int ZSTDv07_DCtx ;


 size_t ZSTDv07_decompress_usingPreparedDCtx (int *,int ,void*,size_t,void const*,size_t) ;

size_t ZSTDv07_decompress_usingDDict(ZSTDv07_DCtx* dctx,
                                           void* dst, size_t dstCapacity,
                                     const void* src, size_t srcSize,
                                     const ZSTDv07_DDict* ddict)
{
    return ZSTDv07_decompress_usingPreparedDCtx(dctx, ddict->refContext,
                                           dst, dstCapacity,
                                           src, srcSize);
}
