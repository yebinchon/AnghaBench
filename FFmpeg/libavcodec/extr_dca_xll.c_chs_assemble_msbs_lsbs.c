
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int** msb_sample_buffer; int** lsb_sample_buffer; int* bit_width_adjust; scalar_t__* nscalablelsbs; } ;
struct TYPE_9__ {int nchannels; TYPE_3__* bands; } ;
struct TYPE_8__ {int nframesamples; } ;
typedef int SUINT ;
typedef TYPE_1__ DCAXllDecoder ;
typedef TYPE_2__ DCAXllChSet ;
typedef TYPE_3__ DCAXllBand ;


 int chs_get_lsb_width (TYPE_1__*,TYPE_2__*,int,int) ;

__attribute__((used)) static void chs_assemble_msbs_lsbs(DCAXllDecoder *s, DCAXllChSet *c, int band)
{
    DCAXllBand *b = &c->bands[band];
    int n, ch, nsamples = s->nframesamples;

    for (ch = 0; ch < c->nchannels; ch++) {
        int shift = chs_get_lsb_width(s, c, band, ch);
        if (shift) {
            int32_t *msb = b->msb_sample_buffer[ch];
            if (b->nscalablelsbs[ch]) {
                int32_t *lsb = b->lsb_sample_buffer[ch];
                int adj = b->bit_width_adjust[ch];
                for (n = 0; n < nsamples; n++)
                    msb[n] = msb[n] * (SUINT)(1 << shift) + (lsb[n] << adj);
            } else {
                for (n = 0; n < nsamples; n++)
                    msb[n] = msb[n] * (SUINT)(1 << shift);
            }
        }
    }
}
