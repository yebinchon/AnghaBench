
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bit_rate; int msmpeg4_version; scalar_t__ flipflop_rounding; int pb; TYPE_1__* avctx; } ;
struct TYPE_6__ {unsigned int den; unsigned int num; } ;
struct TYPE_5__ {int ticks_per_frame; TYPE_2__ time_base; } ;
typedef TYPE_3__ MpegEncContext ;


 unsigned int FFMAX (int ,int) ;
 scalar_t__ FFMIN (int,int) ;
 int av_assert0 (int) ;
 int put_bits (int *,int,scalar_t__) ;

void ff_msmpeg4_encode_ext_header(MpegEncContext * s)
{
        unsigned fps = s->avctx->time_base.den / s->avctx->time_base.num / FFMAX(s->avctx->ticks_per_frame, 1);
        put_bits(&s->pb, 5, FFMIN(fps, 31));

        put_bits(&s->pb, 11, FFMIN(s->bit_rate/1024, 2047));

        if(s->msmpeg4_version>=3)
            put_bits(&s->pb, 1, s->flipflop_rounding);
        else
            av_assert0(s->flipflop_rounding==0);
}
