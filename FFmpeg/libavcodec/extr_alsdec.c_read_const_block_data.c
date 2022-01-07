
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ block_length; int* const_block; scalar_t__* raw_samples; void* js_blocks; } ;
struct TYPE_8__ {scalar_t__ floating; } ;
struct TYPE_9__ {int gb; TYPE_1__* avctx; TYPE_2__ sconf; } ;
struct TYPE_7__ {int bits_per_raw_sample; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ ALSSpecificConfig ;
typedef TYPE_3__ ALSDecContext ;
typedef TYPE_4__ ALSBlockData ;


 int AVERROR_INVALIDDATA ;
 void* get_bits1 (int *) ;
 scalar_t__ get_sbits_long (int *,unsigned int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int read_const_block_data(ALSDecContext *ctx, ALSBlockData *bd)
{
    ALSSpecificConfig *sconf = &ctx->sconf;
    AVCodecContext *avctx = ctx->avctx;
    GetBitContext *gb = &ctx->gb;

    if (bd->block_length <= 0)
        return AVERROR_INVALIDDATA;

    *bd->raw_samples = 0;
    *bd->const_block = get_bits1(gb);
    bd->js_blocks = get_bits1(gb);


    skip_bits(gb, 5);

    if (*bd->const_block) {
        unsigned int const_val_bits = sconf->floating ? 24 : avctx->bits_per_raw_sample;
        *bd->raw_samples = get_sbits_long(gb, const_val_bits);
    }


    *bd->const_block = 1;

    return 0;
}
