
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_11__ {unsigned int shift; int * state; int order; } ;
struct TYPE_8__ {int (* mlp_filter_channel ) (int *,int const*,int ,int ,unsigned int,int ,int,int *) ;} ;
struct TYPE_10__ {int ** sample_buffer; TYPE_2__ dsp; TYPE_3__* substream; } ;
struct TYPE_9__ {int blocksize; size_t blockpos; int * quant_step_size; TYPE_1__* channel_params; } ;
struct TYPE_7__ {TYPE_5__* filter_params; int ** coeff; } ;
typedef TYPE_3__ SubStream ;
typedef TYPE_4__ MLPDecodeContext ;
typedef TYPE_5__ FilterParams ;


 size_t FIR ;
 size_t IIR ;
 int MAX_BLOCKSIZE ;
 int MAX_FIR_ORDER ;
 int MAX_IIR_ORDER ;
 int MSB_MASK (int ) ;
 int NUM_FILTERS ;
 int memcpy (int *,int *,int) ;
 int stub1 (int *,int const*,int ,int ,unsigned int,int ,int,int *) ;

__attribute__((used)) static void filter_channel(MLPDecodeContext *m, unsigned int substr,
                           unsigned int channel)
{
    SubStream *s = &m->substream[substr];
    const int32_t *fircoeff = s->channel_params[channel].coeff[FIR];
    int32_t state_buffer[NUM_FILTERS][MAX_BLOCKSIZE + MAX_FIR_ORDER];
    int32_t *firbuf = state_buffer[FIR] + MAX_BLOCKSIZE;
    int32_t *iirbuf = state_buffer[IIR] + MAX_BLOCKSIZE;
    FilterParams *fir = &s->channel_params[channel].filter_params[FIR];
    FilterParams *iir = &s->channel_params[channel].filter_params[IIR];
    unsigned int filter_shift = fir->shift;
    int32_t mask = MSB_MASK(s->quant_step_size[channel]);

    memcpy(firbuf, fir->state, MAX_FIR_ORDER * sizeof(int32_t));
    memcpy(iirbuf, iir->state, MAX_IIR_ORDER * sizeof(int32_t));

    m->dsp.mlp_filter_channel(firbuf, fircoeff,
                              fir->order, iir->order,
                              filter_shift, mask, s->blocksize,
                              &m->sample_buffer[s->blockpos][channel]);

    memcpy(fir->state, firbuf - s->blocksize, MAX_FIR_ORDER * sizeof(int32_t));
    memcpy(iir->state, iirbuf - s->blocksize, MAX_IIR_ORDER * sizeof(int32_t));
}
