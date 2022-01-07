
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_8__ {int offset; int lsb_bits; int bitcount; int min; int max; } ;
struct TYPE_7__ {int blocksize; } ;
struct TYPE_6__ {TYPE_2__* cur_decoding_params; } ;
typedef TYPE_1__ MLPEncodeContext ;
typedef TYPE_2__ DecodingParams ;
typedef TYPE_3__ BestOffset ;


 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int HUFF_OFFSET_MAX ;
 int HUFF_OFFSET_MIN ;
 int number_sbits (int) ;

__attribute__((used)) static void no_codebook_bits(MLPEncodeContext *ctx,
                             unsigned int channel,
                             int32_t min, int32_t max,
                             BestOffset *bo)
{
    DecodingParams *dp = ctx->cur_decoding_params;
    int16_t offset;
    int32_t unsign;
    uint32_t diff;
    int lsb_bits;



    if (min < HUFF_OFFSET_MIN)
        max = FFMAX(max, 2 * HUFF_OFFSET_MIN - min + 1);
    if (max > HUFF_OFFSET_MAX)
        min = FFMIN(min, 2 * HUFF_OFFSET_MAX - max - 1);


    diff = max - min;

    lsb_bits = number_sbits(diff) - 1;

    unsign = 1 << (lsb_bits - 1);



    offset = min + diff / 2 + !!lsb_bits;

    bo->offset = offset;
    bo->lsb_bits = lsb_bits;
    bo->bitcount = lsb_bits * dp->blocksize;
    bo->min = max - unsign + 1;
    bo->max = min + unsign;
}
