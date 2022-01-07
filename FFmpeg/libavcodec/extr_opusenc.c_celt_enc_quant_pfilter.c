
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float* pf_gains_new; int pf_period_new; } ;
struct TYPE_4__ {float pf_gain; int pf_octave; int pf_period; int pf_tapset; scalar_t__ framebits; TYPE_2__* block; int pfilter; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ CeltBlock ;


 int CELT_POSTFILTER_MINPERIOD ;
 int FFMAX (int,int ) ;
 int FFMIN (int,int) ;
 int av_clip (int,int ,int) ;
 int ff_celt_model_tapset ;
 float** ff_celt_postfilter_taps ;
 int ff_opus_rc_enc_cdf (int *,int,int ) ;
 int ff_opus_rc_enc_log (int *,int ,int) ;
 int ff_opus_rc_enc_uint (int *,int,int) ;
 int ff_opus_rc_put_raw (int *,int,int) ;
 scalar_t__ opus_rc_tell (int *) ;

__attribute__((used)) static void celt_enc_quant_pfilter(OpusRangeCoder *rc, CeltFrame *f)
{
    float gain = f->pf_gain;
    int txval, octave = f->pf_octave, period = f->pf_period, tapset = f->pf_tapset;

    ff_opus_rc_enc_log(rc, f->pfilter, 1);
    if (!f->pfilter)
        return;


    txval = FFMIN(octave, 6);
    ff_opus_rc_enc_uint(rc, txval, 6);
    octave = txval;

    txval = av_clip(period - (16 << octave) + 1, 0, (1 << (4 + octave)) - 1);
    ff_opus_rc_put_raw(rc, period, 4 + octave);
    period = txval + (16 << octave) - 1;

    txval = FFMIN(((int)(gain / 0.09375f)) - 1, 7);
    ff_opus_rc_put_raw(rc, txval, 3);
    gain = 0.09375f * (txval + 1);

    if ((opus_rc_tell(rc) + 2) <= f->framebits)
        ff_opus_rc_enc_cdf(rc, tapset, ff_celt_model_tapset);
    else
        tapset = 0;

    for (int i = 0; i < 2; i++) {
        CeltBlock *block = &f->block[i];

        block->pf_period_new = FFMAX(period, CELT_POSTFILTER_MINPERIOD);
        block->pf_gains_new[0] = gain * ff_celt_postfilter_taps[tapset][0];
        block->pf_gains_new[1] = gain * ff_celt_postfilter_taps[tapset][1];
        block->pf_gains_new[2] = gain * ff_celt_postfilter_taps[tapset][2];
    }
}
