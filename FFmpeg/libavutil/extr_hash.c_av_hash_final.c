
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int type; int crc; int ctx; } ;
typedef TYPE_1__ AVHashContext ;



 int AV_WB32 (int *,int) ;
 int UINT32_MAX ;
 int av_md5_final (int ,int *) ;
 int av_murmur3_final (int ,int *) ;
 int av_ripemd_final (int ,int *) ;
 int av_sha512_final (int ,int *) ;
 int av_sha_final (int ,int *) ;

void av_hash_final(AVHashContext *ctx, uint8_t *dst)
{
    switch (ctx->type) {
    case 140: av_md5_final(ctx->ctx, dst); break;
    case 139: av_murmur3_final(ctx->ctx, dst); break;
    case 138:
    case 137:
    case 136:
    case 135: av_ripemd_final(ctx->ctx, dst); break;
    case 134:
    case 133:
    case 132: av_sha_final(ctx->ctx, dst); break;
    case 129:
    case 128:
    case 131:
    case 130: av_sha512_final(ctx->ctx, dst); break;
    case 141: AV_WB32(dst, ctx->crc ^ UINT32_MAX); break;
    case 142: AV_WB32(dst, ctx->crc); break;
    }
}
