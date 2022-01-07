
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float* pf_gains_new; int pf_period_new; } ;
struct TYPE_4__ {scalar_t__ start_band; int framebits; TYPE_2__* block; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ CeltBlock ;


 int CELT_POSTFILTER_MINPERIOD ;
 int FFMAX (int,int ) ;
 int ff_celt_model_tapset ;
 float** ff_celt_postfilter_taps ;
 int ff_opus_rc_dec_cdf (int *,int ) ;
 int ff_opus_rc_dec_log (int *,int) ;
 int ff_opus_rc_dec_uint (int *,int) ;
 int ff_opus_rc_get_raw (int *,int) ;
 int memset (float*,int ,int) ;
 int opus_rc_tell (int *) ;

__attribute__((used)) static int parse_postfilter(CeltFrame *f, OpusRangeCoder *rc, int consumed)
{
    int i;

    memset(f->block[0].pf_gains_new, 0, sizeof(f->block[0].pf_gains_new));
    memset(f->block[1].pf_gains_new, 0, sizeof(f->block[1].pf_gains_new));

    if (f->start_band == 0 && consumed + 16 <= f->framebits) {
        int has_postfilter = ff_opus_rc_dec_log(rc, 1);
        if (has_postfilter) {
            float gain;
            int tapset, octave, period;

            octave = ff_opus_rc_dec_uint(rc, 6);
            period = (16 << octave) + ff_opus_rc_get_raw(rc, 4 + octave) - 1;
            gain = 0.09375f * (ff_opus_rc_get_raw(rc, 3) + 1);
            tapset = (opus_rc_tell(rc) + 2 <= f->framebits) ?
                     ff_opus_rc_dec_cdf(rc, ff_celt_model_tapset) : 0;

            for (i = 0; i < 2; i++) {
                CeltBlock *block = &f->block[i];

                block->pf_period_new = FFMAX(period, CELT_POSTFILTER_MINPERIOD);
                block->pf_gains_new[0] = gain * ff_celt_postfilter_taps[tapset][0];
                block->pf_gains_new[1] = gain * ff_celt_postfilter_taps[tapset][1];
                block->pf_gains_new[2] = gain * ff_celt_postfilter_taps[tapset][2];
            }
        }

        consumed = opus_rc_tell(rc);
    }

    return consumed;
}
