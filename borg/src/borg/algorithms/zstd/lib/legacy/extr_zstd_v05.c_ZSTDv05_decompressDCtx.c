
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 size_t ZSTDv05_decompress_usingDict (int *,void*,size_t,void const*,size_t,int *,int ) ;

size_t ZSTDv05_decompressDCtx(ZSTDv05_DCtx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    return ZSTDv05_decompress_usingDict(dctx, dst, maxDstSize, src, srcSize, ((void*)0), 0);
}
