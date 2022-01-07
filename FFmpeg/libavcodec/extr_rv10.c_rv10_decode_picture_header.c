
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pict_type; scalar_t__ qscale; int rv10_version; int mb_x; int mb_y; int mb_width; int mb_num; int mb_height; int f_code; int unrestricted_mv; int gb; void** last_dc; int avctx; } ;
typedef TYPE_1__ MpegEncContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 scalar_t__ AV_PICTURE_TYPE_P ;
 int av_log (int ,int ,char*) ;
 int avpriv_request_sample (int ,char*) ;
 int ff_dlog (int ,char*,scalar_t__,int,...) ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int rv10_decode_picture_header(MpegEncContext *s)
{
    int mb_count, pb_frame, marker, mb_xy;

    marker = get_bits1(&s->gb);

    if (get_bits1(&s->gb))
        s->pict_type = AV_PICTURE_TYPE_P;
    else
        s->pict_type = AV_PICTURE_TYPE_I;

    if (!marker)
        av_log(s->avctx, AV_LOG_ERROR, "marker missing\n");

    pb_frame = get_bits1(&s->gb);

    ff_dlog(s->avctx, "pict_type=%d pb_frame=%d\n", s->pict_type, pb_frame);

    if (pb_frame) {
        avpriv_request_sample(s->avctx, "PB-frame");
        return AVERROR_PATCHWELCOME;
    }

    s->qscale = get_bits(&s->gb, 5);
    if (s->qscale == 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid qscale value: 0\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->pict_type == AV_PICTURE_TYPE_I) {
        if (s->rv10_version == 3) {

            s->last_dc[0] = get_bits(&s->gb, 8);
            s->last_dc[1] = get_bits(&s->gb, 8);
            s->last_dc[2] = get_bits(&s->gb, 8);
            ff_dlog(s->avctx, "DC:%d %d %d\n", s->last_dc[0],
                    s->last_dc[1], s->last_dc[2]);
        }
    }



    mb_xy = s->mb_x + s->mb_y * s->mb_width;
    if (show_bits(&s->gb, 12) == 0 || (mb_xy && mb_xy < s->mb_num)) {
        s->mb_x = get_bits(&s->gb, 6);
        s->mb_y = get_bits(&s->gb, 6);
        mb_count = get_bits(&s->gb, 12);
    } else {
        s->mb_x = 0;
        s->mb_y = 0;
        mb_count = s->mb_width * s->mb_height;
    }
    skip_bits(&s->gb, 3);
    s->f_code = 1;
    s->unrestricted_mv = 1;

    return mb_count;
}
