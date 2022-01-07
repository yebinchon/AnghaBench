
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int crc; int ctx; } ;
typedef TYPE_1__ AVHashContext ;
 int UINT32_MAX ;
 int av_md5_init (int ) ;
 int av_murmur3_init (int ) ;
 int av_ripemd_init (int ,int) ;
 int av_sha512_init (int ,int) ;
 int av_sha_init (int ,int) ;

void av_hash_init(AVHashContext *ctx)
{
    switch (ctx->type) {
    case 140: av_md5_init(ctx->ctx); break;
    case 139: av_murmur3_init(ctx->ctx); break;
    case 138: av_ripemd_init(ctx->ctx, 128); break;
    case 137: av_ripemd_init(ctx->ctx, 160); break;
    case 136: av_ripemd_init(ctx->ctx, 256); break;
    case 135: av_ripemd_init(ctx->ctx, 320); break;
    case 134: av_sha_init(ctx->ctx, 160); break;
    case 133: av_sha_init(ctx->ctx, 224); break;
    case 132: av_sha_init(ctx->ctx, 256); break;
    case 129: av_sha512_init(ctx->ctx, 224); break;
    case 128: av_sha512_init(ctx->ctx, 256); break;
    case 131: av_sha512_init(ctx->ctx, 384); break;
    case 130: av_sha512_init(ctx->ctx, 512); break;
    case 141: ctx->crc = UINT32_MAX; break;
    case 142: ctx->crc = 1; break;
    }
}
