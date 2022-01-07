
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int nfreqbands; int nchannels; size_t* ch_remap; int * deci_history; TYPE_1__* bands; int ** sample_buffer; int * sample_size; } ;
struct TYPE_9__ {int nframesamples; int ** output_samples; TYPE_2__* dcadsp; } ;
struct TYPE_8__ {int (* assemble_freq_bands ) (int *,int *,int *,int ,int) ;} ;
struct TYPE_7__ {int ** msb_sample_buffer; } ;
typedef TYPE_3__ DCAXllDecoder ;
typedef TYPE_4__ DCAXllChSet ;


 int AVERROR (int ) ;
 int DCA_XLL_DECI_HISTORY_MAX ;
 int ENOMEM ;
 int av_assert1 (int) ;
 int av_fast_malloc (int **,int *,int) ;
 int ff_dca_xll_band_coeff ;
 int memcpy (int *,int ,int) ;
 int stub1 (int *,int *,int *,int ,int) ;

__attribute__((used)) static int chs_assemble_freq_bands(DCAXllDecoder *s, DCAXllChSet *c)
{
    int ch, nsamples = s->nframesamples;
    int32_t *ptr;

    av_assert1(c->nfreqbands > 1);


    av_fast_malloc(&c->sample_buffer[2], &c->sample_size[2],
                   2 * nsamples * c->nchannels * sizeof(int32_t));
    if (!c->sample_buffer[2])
        return AVERROR(ENOMEM);


    ptr = c->sample_buffer[2];
    for (ch = 0; ch < c->nchannels; ch++) {
        int32_t *band0 = c->bands[0].msb_sample_buffer[ch];
        int32_t *band1 = c->bands[1].msb_sample_buffer[ch];


        memcpy(band0 - DCA_XLL_DECI_HISTORY_MAX,
               c->deci_history[ch], sizeof(c->deci_history[0]));


        s->dcadsp->assemble_freq_bands(ptr, band0, band1,
                                       ff_dca_xll_band_coeff,
                                       nsamples);


        s->output_samples[c->ch_remap[ch]] = ptr;
        ptr += nsamples * 2;
    }

    return 0;
}
