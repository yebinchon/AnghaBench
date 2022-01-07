
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* base; } ;
typedef TYPE_1__ dctx_t ;


 size_t ZSTDv01_decompressDCtx (TYPE_1__*,void*,size_t,void const*,size_t) ;

size_t ZSTDv01_decompress(void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    dctx_t ctx;
    ctx.base = dst;
    return ZSTDv01_decompressDCtx(&ctx, dst, maxDstSize, src, srcSize);
}
