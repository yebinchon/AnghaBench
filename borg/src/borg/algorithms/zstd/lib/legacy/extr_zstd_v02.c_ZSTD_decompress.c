
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* base; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 size_t ZSTD_decompressDCtx (TYPE_1__*,void*,size_t,void const*,size_t) ;

__attribute__((used)) static size_t ZSTD_decompress(void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    ZSTD_DCtx ctx;
    ctx.base = dst;
    return ZSTD_decompressDCtx(&ctx, dst, maxDstSize, src, srcSize);
}
