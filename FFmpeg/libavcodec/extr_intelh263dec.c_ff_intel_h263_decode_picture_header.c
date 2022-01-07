
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num; int den; } ;
struct TYPE_9__ {TYPE_4__ sample_aspect_ratio; int lowres; } ;
struct TYPE_7__ {int picture_number; int h263_long_vectors; int obmc; int unrestricted_mv; int pb_frame; int loop_filter; int chroma_qscale; int qscale; int f_code; int c_dc_scale_table; int y_dc_scale_table; int gb; TYPE_5__* avctx; void* height; void* width; scalar_t__ pict_type; scalar_t__ h263_plus; } ;
typedef TYPE_1__ MpegEncContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 int FRAME_SKIPPED ;
 int av_log (TYPE_5__*,int ,char*) ;
 int check_marker (TYPE_5__*,int *,char*) ;
 void*** ff_h263_format ;
 TYPE_4__* ff_h263_pixel_aspect ;
 int ff_h263_show_pict_info (TYPE_1__*) ;
 int ff_mpeg1_dc_scale_table ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int get_bits_long (int *,int) ;
 scalar_t__ skip_1stop_8data_bits (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

int ff_intel_h263_decode_picture_header(MpegEncContext *s)
{
    int format;

    if (get_bits_left(&s->gb) == 64) {
        return FRAME_SKIPPED;
    }


    if (get_bits_long(&s->gb, 22) != 0x20) {
        av_log(s->avctx, AV_LOG_ERROR, "Bad picture start code\n");
        return -1;
    }
    s->picture_number = get_bits(&s->gb, 8);

    if (check_marker(s->avctx, &s->gb, "after picture_number") != 1) {
        return -1;
    }
    if (get_bits1(&s->gb) != 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Bad H.263 id\n");
        return -1;
    }
    skip_bits1(&s->gb);
    skip_bits1(&s->gb);
    skip_bits1(&s->gb);

    format = get_bits(&s->gb, 3);
    if (format == 0 || format == 6) {
        av_log(s->avctx, AV_LOG_ERROR, "Intel H.263 free format not supported\n");
        return -1;
    }
    s->h263_plus = 0;

    s->pict_type = AV_PICTURE_TYPE_I + get_bits1(&s->gb);

    s->h263_long_vectors = get_bits1(&s->gb);

    if (get_bits1(&s->gb) != 0) {
        av_log(s->avctx, AV_LOG_ERROR, "SAC not supported\n");
        return -1;
    }
    s->obmc= get_bits1(&s->gb);
    s->unrestricted_mv = s->obmc || s->h263_long_vectors;
    s->pb_frame = get_bits1(&s->gb);

    if (format < 6) {
        s->width = ff_h263_format[format][0];
        s->height = ff_h263_format[format][1];
        s->avctx->sample_aspect_ratio.num = 12;
        s->avctx->sample_aspect_ratio.den = 11;
    } else {
        format = get_bits(&s->gb, 3);
        if(format == 0 || format == 7){
            av_log(s->avctx, AV_LOG_ERROR, "Wrong Intel H.263 format\n");
            return -1;
        }
        if(get_bits(&s->gb, 2))
            av_log(s->avctx, AV_LOG_ERROR, "Bad value for reserved field\n");
        s->loop_filter = get_bits1(&s->gb) * !s->avctx->lowres;
        if(get_bits1(&s->gb))
            av_log(s->avctx, AV_LOG_ERROR, "Bad value for reserved field\n");
        if(get_bits1(&s->gb))
            s->pb_frame = 2;
        if(get_bits(&s->gb, 5))
            av_log(s->avctx, AV_LOG_ERROR, "Bad value for reserved field\n");
        if(get_bits(&s->gb, 5) != 1)
            av_log(s->avctx, AV_LOG_ERROR, "Invalid marker\n");
    }
    if(format == 6){
        int ar = get_bits(&s->gb, 4);
        skip_bits(&s->gb, 9);
        check_marker(s->avctx, &s->gb, "in dimensions");
        skip_bits(&s->gb, 9);
        if(ar == 15){
            s->avctx->sample_aspect_ratio.num = get_bits(&s->gb, 8);
            s->avctx->sample_aspect_ratio.den = get_bits(&s->gb, 8);
        } else {
            s->avctx->sample_aspect_ratio = ff_h263_pixel_aspect[ar];
        }
        if (s->avctx->sample_aspect_ratio.num == 0)
            av_log(s->avctx, AV_LOG_ERROR, "Invalid aspect ratio.\n");
    }

    s->chroma_qscale= s->qscale = get_bits(&s->gb, 5);
    skip_bits1(&s->gb);

    if(s->pb_frame){
        skip_bits(&s->gb, 3);
        skip_bits(&s->gb, 2);
    }


    if (skip_1stop_8data_bits(&s->gb) < 0)
        return AVERROR_INVALIDDATA;
    s->f_code = 1;

    s->y_dc_scale_table=
    s->c_dc_scale_table= ff_mpeg1_dc_scale_table;

    ff_h263_show_pict_info(s);

    return 0;
}
