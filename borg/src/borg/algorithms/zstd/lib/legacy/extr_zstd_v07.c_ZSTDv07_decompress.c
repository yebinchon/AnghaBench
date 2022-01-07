
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;


 size_t ERROR (int ) ;
 int * ZSTDv07_createDCtx () ;
 size_t ZSTDv07_decompressDCtx (int *,void*,size_t,void const*,size_t) ;
 int ZSTDv07_freeDCtx (int * const) ;
 int memory_allocation ;

size_t ZSTDv07_decompress(void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    ZSTDv07_DCtx dctx;
    return ZSTDv07_decompressDCtx(&dctx, dst, dstCapacity, src, srcSize);

}
