
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int* out; int output_channels; int out_size; scalar_t__ redundancy_idx; scalar_t__* redundancy_output; int * celt_output; TYPE_1__* fdsp; int celt_delay; int avctx; int swr; } ;
struct TYPE_4__ {int (* vector_fmac_scalar ) (int,int ,double,int) ;} ;
typedef TYPE_2__ OpusStreamContext ;


 int AVERROR_BUG ;
 int AV_LOG_ERROR ;
 int av_audio_fifo_read (int ,void**,int) ;
 int av_audio_fifo_size (int ) ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ ff_celt_window2 ;
 int opus_fade (int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int stub1 (int,int ,double,int) ;
 int swr_convert (int ,int **,int,int *,int ) ;

__attribute__((used)) static int opus_flush_resample(OpusStreamContext *s, int nb_samples)
{
    int celt_size = av_audio_fifo_size(s->celt_delay);
    int ret, i;
    ret = swr_convert(s->swr,
                      (uint8_t**)s->out, nb_samples,
                      ((void*)0), 0);
    if (ret < 0)
        return ret;
    else if (ret != nb_samples) {
        av_log(s->avctx, AV_LOG_ERROR, "Wrong number of flushed samples: %d\n",
               ret);
        return AVERROR_BUG;
    }

    if (celt_size) {
        if (celt_size != nb_samples) {
            av_log(s->avctx, AV_LOG_ERROR, "Wrong number of CELT delay samples.\n");
            return AVERROR_BUG;
        }
        av_audio_fifo_read(s->celt_delay, (void**)s->celt_output, nb_samples);
        for (i = 0; i < s->output_channels; i++) {
            s->fdsp->vector_fmac_scalar(s->out[i],
                                        s->celt_output[i], 1.0,
                                        nb_samples);
        }
    }

    if (s->redundancy_idx) {
        for (i = 0; i < s->output_channels; i++)
            opus_fade(s->out[i], s->out[i],
                      s->redundancy_output[i] + 120 + s->redundancy_idx,
                      ff_celt_window2 + s->redundancy_idx, 120 - s->redundancy_idx);
        s->redundancy_idx = 0;
    }

    s->out[0] += nb_samples;
    s->out[1] += nb_samples;
    s->out_size -= nb_samples * sizeof(float);

    return 0;
}
