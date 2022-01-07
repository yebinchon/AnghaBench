
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {int mb_width; int mb_height; scalar_t__ mb_num; int qscale; scalar_t__ mb_y; scalar_t__ mb_x; int gb; } ;
struct TYPE_7__ {scalar_t__ shape; TYPE_1__ m; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg4DecContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ BIN_ONLY_SHAPE ;
 scalar_t__ SLICE_START_CODE ;
 int av_log2 (int) ;
 scalar_t__ get_bits (int *,unsigned int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_left (int *) ;
 scalar_t__ get_bits_long (int *,int) ;
 int mpeg_get_qscale (TYPE_1__*) ;
 int reset_studio_dc_predictors (TYPE_1__*) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

int ff_mpeg4_decode_studio_slice_header(Mpeg4DecContext *ctx)
{
    MpegEncContext *s = &ctx->m;
    GetBitContext *gb = &s->gb;
    unsigned vlc_len;
    uint16_t mb_num;

    if (get_bits_left(gb) >= 32 && get_bits_long(gb, 32) == SLICE_START_CODE) {
        vlc_len = av_log2(s->mb_width * s->mb_height) + 1;
        mb_num = get_bits(gb, vlc_len);

        if (mb_num >= s->mb_num)
            return AVERROR_INVALIDDATA;

        s->mb_x = mb_num % s->mb_width;
        s->mb_y = mb_num / s->mb_width;

        if (ctx->shape != BIN_ONLY_SHAPE)
            s->qscale = mpeg_get_qscale(s);

        if (get_bits1(gb)) {
            skip_bits1(gb);
            skip_bits1(gb);
            skip_bits(gb, 6);
            while (get_bits1(gb))
                skip_bits(gb, 8);
        }

        reset_studio_dc_predictors(s);
    }
    else {
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
