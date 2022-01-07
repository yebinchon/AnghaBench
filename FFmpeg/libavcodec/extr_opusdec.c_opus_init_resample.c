
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_4__ {size_t bandwidth; } ;
struct TYPE_5__ {int avctx; TYPE_1__ packet; int swr; int silk_samplerate; } ;
typedef TYPE_2__ OpusStreamContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int av_opt_set_int (int ,char*,int ,int ) ;
 int * silk_resample_delay ;
 int swr_convert (int ,int *,int ,int const**,int ) ;
 int swr_init (int ) ;

__attribute__((used)) static int opus_init_resample(OpusStreamContext *s)
{
    static const float delay[16] = { 0.0 };
    const uint8_t *delayptr[2] = { (uint8_t*)delay, (uint8_t*)delay };
    int ret;

    av_opt_set_int(s->swr, "in_sample_rate", s->silk_samplerate, 0);
    ret = swr_init(s->swr);
    if (ret < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Error opening the resampler.\n");
        return ret;
    }

    ret = swr_convert(s->swr,
                      ((void*)0), 0,
                      delayptr, silk_resample_delay[s->packet.bandwidth]);
    if (ret < 0) {
        av_log(s->avctx, AV_LOG_ERROR,
               "Error feeding initial silence to the resampler.\n");
        return ret;
    }

    return 0;
}
