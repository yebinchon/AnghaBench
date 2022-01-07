
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* dictEnd; char const* previousDstEnd; char const* vBase; void const* base; } ;
typedef TYPE_1__ ZSTD_DCtx ;



__attribute__((used)) static void ZSTD_decompress_insertDictionary(ZSTD_DCtx* ctx, const void* dict, size_t dictSize)
{
    ctx->dictEnd = ctx->previousDstEnd;
    ctx->vBase = (const char*)dict - ((const char*)(ctx->previousDstEnd) - (const char*)(ctx->base));
    ctx->base = dict;
    ctx->previousDstEnd = (const char*)dict + dictSize;
}
