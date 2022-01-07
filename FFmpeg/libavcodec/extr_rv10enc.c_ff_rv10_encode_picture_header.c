
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pict_type; int qscale; unsigned int mb_width; unsigned int mb_height; int pb; int avctx; } ;
typedef TYPE_1__ MpegEncContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 scalar_t__ AV_PICTURE_TYPE_P ;
 int ENOSYS ;
 int avpriv_align_put_bits (int *) ;
 int avpriv_report_missing_feature (int ,char*,int) ;
 int put_bits (int *,int,int) ;

int ff_rv10_encode_picture_header(MpegEncContext *s, int picture_number)
{
    int full_frame= 0;

    avpriv_align_put_bits(&s->pb);

    put_bits(&s->pb, 1, 1);

    put_bits(&s->pb, 1, (s->pict_type == AV_PICTURE_TYPE_P));

    put_bits(&s->pb, 1, 0);

    put_bits(&s->pb, 5, s->qscale);

    if (s->pict_type == AV_PICTURE_TYPE_I) {

    }


    if(!full_frame){
        if (s->mb_width * s->mb_height >= (1U << 12)) {
            avpriv_report_missing_feature(s->avctx, "Encoding frames with %d (>= 4096) macroblocks",
                                          s->mb_width * s->mb_height);
            return AVERROR(ENOSYS);
        }
        put_bits(&s->pb, 6, 0);
        put_bits(&s->pb, 6, 0);
        put_bits(&s->pb, 12, s->mb_width * s->mb_height);
    }

    put_bits(&s->pb, 3, 0);
    return 0;
}
