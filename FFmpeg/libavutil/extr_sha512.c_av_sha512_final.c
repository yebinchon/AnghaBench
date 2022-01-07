
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {int count; int digest_len; int* state; } ;
typedef TYPE_1__ AVSHA512 ;


 int AV_WB32 (char*,int) ;
 int AV_WB64 (char*,int) ;
 int av_be2ne64 (int) ;
 int av_sha512_update (TYPE_1__*,char*,int) ;

void av_sha512_final(AVSHA512* ctx, uint8_t *digest)
{
    uint64_t i = 0;
    uint64_t finalcount = av_be2ne64(ctx->count << 3);

    av_sha512_update(ctx, "\200", 1);
    while ((ctx->count & 127) != 112)
        av_sha512_update(ctx, "", 1);
    av_sha512_update(ctx, (uint8_t *)&i, 8);
    av_sha512_update(ctx, (uint8_t *)&finalcount, 8);
    for (i = 0; i < ctx->digest_len; i++)
        AV_WB64(digest + i*8, ctx->state[i]);
    if (ctx->digest_len & 1)
        AV_WB32(digest + i*8, ctx->state[i] >> 32);
}
