
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int* dmix_coeff; int nfreqbands; int nchannels; int hier_ofs; int * deci_history; TYPE_1__* bands; int hier_chset; } ;
struct TYPE_9__ {int nactivechsets; TYPE_2__* dcadsp; int nframesamples; TYPE_4__* chset; } ;
struct TYPE_8__ {int (* dmix_sub ) (int ,int ,int,int ) ;} ;
struct TYPE_7__ {int * msb_sample_buffer; } ;
typedef TYPE_3__ DCAXllDecoder ;
typedef TYPE_4__ DCAXllChSet ;


 int DCA_XLL_DECI_HISTORY_MAX ;
 int av_assert1 (int) ;
 int stub1 (int ,int ,int,int ) ;
 int stub2 (int ,int ,int,int ) ;

__attribute__((used)) static void undo_down_mix(DCAXllDecoder *s, DCAXllChSet *o, int band)
{
    int i, j, k, nchannels = 0, *coeff_ptr = o->dmix_coeff;
    DCAXllChSet *c;

    for (i = 0, c = s->chset; i < s->nactivechsets; i++, c++) {
        if (!c->hier_chset)
            continue;

        av_assert1(band < c->nfreqbands);
        for (j = 0; j < c->nchannels; j++) {
            for (k = 0; k < o->nchannels; k++) {
                int coeff = *coeff_ptr++;
                if (coeff) {
                    s->dcadsp->dmix_sub(c->bands[band].msb_sample_buffer[j],
                                        o->bands[band].msb_sample_buffer[k],
                                        coeff, s->nframesamples);
                    if (band)
                        s->dcadsp->dmix_sub(c->deci_history[j],
                                            o->deci_history[k],
                                            coeff, DCA_XLL_DECI_HISTORY_MAX);
                }
            }
        }

        nchannels += c->nchannels;
        if (nchannels >= o->hier_ofs)
            break;
    }
}
