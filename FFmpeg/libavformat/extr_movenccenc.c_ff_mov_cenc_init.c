
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int use_subsamples; int aes_ctr; } ;
typedef TYPE_1__ MOVMuxCencContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_aes_ctr_alloc () ;
 int av_aes_ctr_init (int ,int *) ;
 int av_aes_ctr_set_random_iv (int ) ;

int ff_mov_cenc_init(MOVMuxCencContext* ctx, uint8_t* encryption_key,
                     int use_subsamples, int bitexact)
{
    int ret;

    ctx->aes_ctr = av_aes_ctr_alloc();
    if (!ctx->aes_ctr) {
        return AVERROR(ENOMEM);
    }

    ret = av_aes_ctr_init(ctx->aes_ctr, encryption_key);
    if (ret != 0) {
        return ret;
    }

    if (!bitexact) {
        av_aes_ctr_set_random_iv(ctx->aes_ctr);
    }

    ctx->use_subsamples = use_subsamples;

    return 0;
}
