
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ codec_id; int height; int mb_y; int pb; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 scalar_t__ SLICE_MIN_START_CODE ;
 int put_bits (int *,int,int) ;
 int put_header (TYPE_1__*,scalar_t__) ;
 int put_qscale (TYPE_1__*) ;

void ff_mpeg1_encode_slice_header(MpegEncContext *s)
{
    if (s->codec_id == AV_CODEC_ID_MPEG2VIDEO && s->height > 2800) {
        put_header(s, SLICE_MIN_START_CODE + (s->mb_y & 127));

        put_bits(&s->pb, 3, s->mb_y >> 7);
    } else {
        put_header(s, SLICE_MIN_START_CODE + s->mb_y);
    }
    put_qscale(s);

    put_bits(&s->pb, 1, 0);
}
