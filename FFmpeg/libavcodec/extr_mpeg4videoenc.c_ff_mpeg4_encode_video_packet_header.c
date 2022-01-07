
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_x; int mb_y; int mb_width; int quant_precision; int qscale; int pb; scalar_t__ mb_num; } ;
typedef TYPE_1__ MpegEncContext ;


 int av_log2 (scalar_t__) ;
 int ff_mpeg4_get_video_packet_prefix_length (TYPE_1__*) ;
 int put_bits (int *,int,int) ;

void ff_mpeg4_encode_video_packet_header(MpegEncContext *s)
{
    int mb_num_bits = av_log2(s->mb_num - 1) + 1;

    put_bits(&s->pb, ff_mpeg4_get_video_packet_prefix_length(s), 0);
    put_bits(&s->pb, 1, 1);

    put_bits(&s->pb, mb_num_bits, s->mb_x + s->mb_y * s->mb_width);
    put_bits(&s->pb, s->quant_precision, s->qscale);
    put_bits(&s->pb, 1, 0);
}
