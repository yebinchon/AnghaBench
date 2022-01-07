
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int nfreqbands; int nchannels; TYPE_1__* bands; int ** sample_buffer; int * sample_size; } ;
struct TYPE_7__ {int nframesamples; } ;
struct TYPE_6__ {int ** msb_sample_buffer; } ;
typedef TYPE_2__ DCAXllDecoder ;
typedef TYPE_3__ DCAXllChSet ;


 int AVERROR (int ) ;
 int DCA_XLL_DECI_HISTORY_MAX ;
 int ENOMEM ;
 int av_fast_malloc (int **,int *,int) ;

__attribute__((used)) static int chs_alloc_msb_band_data(DCAXllDecoder *s, DCAXllChSet *c)
{
    int ndecisamples = c->nfreqbands > 1 ? DCA_XLL_DECI_HISTORY_MAX : 0;
    int nchsamples = s->nframesamples + ndecisamples;
    int i, j, nsamples = nchsamples * c->nchannels * c->nfreqbands;
    int32_t *ptr;


    av_fast_malloc(&c->sample_buffer[0], &c->sample_size[0], nsamples * sizeof(int32_t));
    if (!c->sample_buffer[0])
        return AVERROR(ENOMEM);

    ptr = c->sample_buffer[0] + ndecisamples;
    for (i = 0; i < c->nfreqbands; i++) {
        for (j = 0; j < c->nchannels; j++) {
            c->bands[i].msb_sample_buffer[j] = ptr;
            ptr += nchsamples;
        }
    }

    return 0;
}
