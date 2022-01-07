
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_base; int avctx; } ;
typedef TYPE_1__ MpegEncContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 int av_log (int ,int ,char*) ;
 int check_marker (int ,int *,char*) ;
 int get_bits (int *,int) ;
 int show_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int mpeg4_decode_gop_header(MpegEncContext *s, GetBitContext *gb)
{
    int hours, minutes, seconds;

    if (!show_bits(gb, 23)) {
        av_log(s->avctx, AV_LOG_WARNING, "GOP header invalid\n");
        return AVERROR_INVALIDDATA;
    }

    hours = get_bits(gb, 5);
    minutes = get_bits(gb, 6);
    check_marker(s->avctx, gb, "in gop_header");
    seconds = get_bits(gb, 6);

    s->time_base = seconds + 60*(minutes + 60*hours);

    skip_bits1(gb);
    skip_bits1(gb);

    return 0;
}
