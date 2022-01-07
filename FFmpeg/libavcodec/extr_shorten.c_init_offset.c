
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int sample_fmt; } ;
struct TYPE_4__ {int internal_ftype; int channels; int** offset; TYPE_3__* avctx; int nmean; } ;
typedef TYPE_1__ ShortenContext ;


 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_S16P ;
 int AV_SAMPLE_FMT_U8P ;
 int FFMAX (int,int ) ;



 int av_log (TYPE_3__*,int ,char*) ;

__attribute__((used)) static int init_offset(ShortenContext *s)
{
    int32_t mean = 0;
    int chan, i;
    int nblock = FFMAX(1, s->nmean);

    switch (s->internal_ftype) {
    case 128:
        s->avctx->sample_fmt = AV_SAMPLE_FMT_U8P;
        mean = 0x80;
        break;
    case 130:
    case 129:
        s->avctx->sample_fmt = AV_SAMPLE_FMT_S16P;
        break;
    default:
        av_log(s->avctx, AV_LOG_ERROR, "unknown audio type\n");
        return AVERROR_PATCHWELCOME;
    }

    for (chan = 0; chan < s->channels; chan++)
        for (i = 0; i < nblock; i++)
            s->offset[chan][i] = mean;
    return 0;
}
