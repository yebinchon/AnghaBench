
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ subsample_count; int auxiliary_info_size; int auxiliary_info_subsample_start; int use_subsamples; int aes_ctr; } ;
typedef TYPE_1__ MOVMuxCencContext ;


 int AES_CTR_IV_SIZE ;
 int auxiliary_info_write (TYPE_1__*,int *,int) ;
 int * av_aes_ctr_get_iv (int ) ;

__attribute__((used)) static int mov_cenc_start_packet(MOVMuxCencContext* ctx)
{
    int ret;


    ret = auxiliary_info_write(ctx, av_aes_ctr_get_iv(ctx->aes_ctr), AES_CTR_IV_SIZE);
    if (ret) {
        return ret;
    }

    if (!ctx->use_subsamples) {
        return 0;
    }


    ctx->auxiliary_info_subsample_start = ctx->auxiliary_info_size;
    ctx->subsample_count = 0;
    ret = auxiliary_info_write(ctx, (uint8_t*)&ctx->subsample_count, sizeof(ctx->subsample_count));
    if (ret) {
        return ret;
    }

    return 0;
}
