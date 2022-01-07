
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int nfreqbands; int nchannels; int* dmix_scale; int hier_ofs; int * deci_history; TYPE_1__* bands; int hier_chset; } ;
struct TYPE_9__ {int nactivechsets; TYPE_2__* dcadsp; int nframesamples; TYPE_4__* chset; } ;
struct TYPE_8__ {int (* dmix_scale ) (int ,int,int ) ;} ;
struct TYPE_7__ {int * msb_sample_buffer; } ;
typedef TYPE_3__ DCAXllDecoder ;
typedef TYPE_4__ DCAXllChSet ;


 int DCA_XLL_DECI_HISTORY_MAX ;
 int av_assert1 (int) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int,int ) ;

__attribute__((used)) static void scale_down_mix(DCAXllDecoder *s, DCAXllChSet *o, int band)
{
    int i, j, nchannels = 0;
    DCAXllChSet *c;

    for (i = 0, c = s->chset; i < s->nactivechsets; i++, c++) {
        if (!c->hier_chset)
            continue;

        av_assert1(band < c->nfreqbands);
        for (j = 0; j < c->nchannels; j++) {
            int scale = o->dmix_scale[nchannels++];
            if (scale != (1 << 15)) {
                s->dcadsp->dmix_scale(c->bands[band].msb_sample_buffer[j],
                                      scale, s->nframesamples);
                if (band)
                    s->dcadsp->dmix_scale(c->deci_history[j],
                                          scale, DCA_XLL_DECI_HISTORY_MAX);
            }
        }

        if (nchannels >= o->hier_ofs)
            break;
    }
}
