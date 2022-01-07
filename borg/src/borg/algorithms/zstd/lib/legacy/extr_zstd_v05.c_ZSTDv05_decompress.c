
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 size_t ERROR (int ) ;
 int * ZSTDv05_createDCtx () ;
 size_t ZSTDv05_decompressDCtx (int *,void*,size_t,void const*,size_t) ;
 int ZSTDv05_freeDCtx (int *) ;
 int memory_allocation ;

size_t ZSTDv05_decompress(void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    ZSTDv05_DCtx dctx;
    return ZSTDv05_decompressDCtx(&dctx, dst, maxDstSize, src, srcSize);

}
