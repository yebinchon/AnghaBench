
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {int count; int digest_len; int * state; } ;
typedef TYPE_1__ AVSHA ;


 int AV_WB32 (char*,int ) ;
 int av_be2ne64 (int) ;
 int av_sha_update (TYPE_1__*,char*,int) ;

void av_sha_final(AVSHA* ctx, uint8_t *digest)
{
    int i;
    uint64_t finalcount = av_be2ne64(ctx->count << 3);

    av_sha_update(ctx, "\200", 1);
    while ((ctx->count & 63) != 56)
        av_sha_update(ctx, "", 1);
    av_sha_update(ctx, (uint8_t *)&finalcount, 8);
    for (i = 0; i < ctx->digest_len; i++)
        AV_WB32(digest + i*4, ctx->state[i]);
}
