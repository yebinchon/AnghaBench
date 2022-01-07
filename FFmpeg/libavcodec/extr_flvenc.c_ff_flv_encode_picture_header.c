
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int h263_flv; int width; int height; scalar_t__ pict_type; int qscale; int c_dc_scale_table; int y_dc_scale_table; scalar_t__ h263_aic; int pb; TYPE_2__* avctx; scalar_t__ picture_number; } ;
struct TYPE_5__ {int num; int den; } ;
struct TYPE_6__ {TYPE_1__ time_base; } ;
typedef TYPE_3__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_P ;
 int avpriv_align_put_bits (int *) ;
 int ff_aic_dc_scale_table ;
 int ff_mpeg1_dc_scale_table ;
 int put_bits (int *,int,int) ;

void ff_flv_encode_picture_header(MpegEncContext *s, int picture_number)
{
    int format;

    avpriv_align_put_bits(&s->pb);

    put_bits(&s->pb, 17, 1);

    put_bits(&s->pb, 5, (s->h263_flv - 1));
    put_bits(&s->pb, 8,
             (((int64_t) s->picture_number * 30 * s->avctx->time_base.num) /
              s->avctx->time_base.den) & 0xff);
    if (s->width == 352 && s->height == 288)
        format = 2;
    else if (s->width == 176 && s->height == 144)
        format = 3;
    else if (s->width == 128 && s->height == 96)
        format = 4;
    else if (s->width == 320 && s->height == 240)
        format = 5;
    else if (s->width == 160 && s->height == 120)
        format = 6;
    else if (s->width <= 255 && s->height <= 255)
        format = 0;
    else
        format = 1;
    put_bits(&s->pb, 3, format);
    if (format == 0) {
        put_bits(&s->pb, 8, s->width);
        put_bits(&s->pb, 8, s->height);
    } else if (format == 1) {
        put_bits(&s->pb, 16, s->width);
        put_bits(&s->pb, 16, s->height);
    }
    put_bits(&s->pb, 2, s->pict_type == AV_PICTURE_TYPE_P);
    put_bits(&s->pb, 1, 1);
    put_bits(&s->pb, 5, s->qscale);
    put_bits(&s->pb, 1, 0);

    if (s->h263_aic) {
        s->y_dc_scale_table =
        s->c_dc_scale_table = ff_aic_dc_scale_table;
    } else {
        s->y_dc_scale_table =
        s->c_dc_scale_table = ff_mpeg1_dc_scale_table;
    }
}
