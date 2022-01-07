
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msmpeg4_version; int bit_rate; int avctx; scalar_t__ flipflop_rounding; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,...) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int skip_bits (int *,int) ;

int ff_msmpeg4_decode_ext_header(MpegEncContext * s, int buf_size)
{
    int left= buf_size*8 - get_bits_count(&s->gb);
    int length= s->msmpeg4_version>=3 ? 17 : 16;

    if(left>=length && left<length+8)
    {
        skip_bits(&s->gb, 5);
        s->bit_rate= get_bits(&s->gb, 11)*1024;
        if(s->msmpeg4_version>=3)
            s->flipflop_rounding= get_bits1(&s->gb);
        else
            s->flipflop_rounding= 0;
    }
    else if(left<length+8)
    {
        s->flipflop_rounding= 0;
        if(s->msmpeg4_version != 2)
            av_log(s->avctx, AV_LOG_ERROR, "ext header missing, %d left\n", left);
    }
    else
    {
        av_log(s->avctx, AV_LOG_ERROR, "I-frame too long, ignoring ext header\n");
    }

    return 0;
}
