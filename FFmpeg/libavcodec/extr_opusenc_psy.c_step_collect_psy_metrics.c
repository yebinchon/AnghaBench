
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int (* mdct ) (TYPE_7__*,float*,int *,int) ;} ;
struct TYPE_15__ {int nb_samples; int * extended_data; } ;
struct TYPE_14__ {float excitation; float excitation_init; float excitation_dist; } ;
struct TYPE_13__ {int bsize_analysis; int ** bfilter_hi; int ** bfilter_lo; TYPE_5__** ex; TYPE_2__* avctx; int * scratch; TYPE_7__** mdct; int * window; TYPE_1__* dsp; int bufqueue; TYPE_3__** steps; } ;
struct TYPE_12__ {int index; float** coeffs; float*** bands; float** energy; int silence; float* stereo; float** change_amp; float total_change; int ** tone; } ;
struct TYPE_11__ {int channels; } ;
struct TYPE_10__ {int (* vector_fmul ) (int *,int *,int ,int) ;} ;
typedef TYPE_3__ OpusPsyStep ;
typedef TYPE_4__ OpusPsyContext ;
typedef TYPE_5__ OpusBandExcitation ;
typedef TYPE_6__ AVFrame ;


 int CELT_MAX_BANDS ;
 float FFMAX (float,float) ;
 int FFMIN (int const,int) ;
 int OPUS_BLOCK_SIZE (size_t) ;
 scalar_t__ av_clipf (int,int,double) ;
 float bessel_filter (int *,float) ;
 int expf (float) ;
 TYPE_6__* ff_bufqueue_peek (int ,int) ;
 size_t* ff_celt_freq_bands ;
 int* ff_celt_freq_range ;
 int memcpy (int *,int ,int) ;
 float sqrtf (float) ;
 int stub1 (int *,int *,int ,int) ;
 int stub2 (TYPE_7__*,float*,int *,int) ;

__attribute__((used)) static void step_collect_psy_metrics(OpusPsyContext *s, int index)
{
    int silence = 0, ch, i, j;
    OpusPsyStep *st = s->steps[index];

    st->index = index;

    for (ch = 0; ch < s->avctx->channels; ch++) {
        const int lap_size = (1 << s->bsize_analysis);
        for (i = 1; i <= FFMIN(lap_size, index); i++) {
            const int offset = i*120;
            AVFrame *cur = ff_bufqueue_peek(s->bufqueue, index - i);
            memcpy(&s->scratch[offset], cur->extended_data[ch], cur->nb_samples*sizeof(float));
        }
        for (i = 0; i < lap_size; i++) {
            const int offset = i*120 + lap_size;
            AVFrame *cur = ff_bufqueue_peek(s->bufqueue, index + i);
            memcpy(&s->scratch[offset], cur->extended_data[ch], cur->nb_samples*sizeof(float));
        }

        s->dsp->vector_fmul(s->scratch, s->scratch, s->window[s->bsize_analysis],
                            (OPUS_BLOCK_SIZE(s->bsize_analysis) << 1));

        s->mdct[s->bsize_analysis]->mdct(s->mdct[s->bsize_analysis], st->coeffs[ch], s->scratch, 1);

        for (i = 0; i < CELT_MAX_BANDS; i++)
            st->bands[ch][i] = &st->coeffs[ch][ff_celt_freq_bands[i] << s->bsize_analysis];
    }

    for (ch = 0; ch < s->avctx->channels; ch++) {
        for (i = 0; i < CELT_MAX_BANDS; i++) {
            float avg_c_s, energy = 0.0f, dist_dev = 0.0f;
            const int range = ff_celt_freq_range[i] << s->bsize_analysis;
            const float *coeffs = st->bands[ch][i];
            for (j = 0; j < range; j++)
                energy += coeffs[j]*coeffs[j];

            st->energy[ch][i] += sqrtf(energy);
            silence |= !!st->energy[ch][i];
            avg_c_s = energy / range;

            for (j = 0; j < range; j++) {
                const float c_s = coeffs[j]*coeffs[j];
                dist_dev += (avg_c_s - c_s)*(avg_c_s - c_s);
            }

            st->tone[ch][i] += sqrtf(dist_dev);
        }
    }

    st->silence = !silence;

    if (s->avctx->channels > 1) {
        for (i = 0; i < CELT_MAX_BANDS; i++) {
            float incompat = 0.0f;
            const float *coeffs1 = st->bands[0][i];
            const float *coeffs2 = st->bands[1][i];
            const int range = ff_celt_freq_range[i] << s->bsize_analysis;
            for (j = 0; j < range; j++)
                incompat += (coeffs1[j] - coeffs2[j])*(coeffs1[j] - coeffs2[j]);
            st->stereo[i] = sqrtf(incompat);
        }
    }

    for (ch = 0; ch < s->avctx->channels; ch++) {
        for (i = 0; i < CELT_MAX_BANDS; i++) {
            OpusBandExcitation *ex = &s->ex[ch][i];
            float bp_e = bessel_filter(&s->bfilter_lo[ch][i], st->energy[ch][i]);
            bp_e = bessel_filter(&s->bfilter_hi[ch][i], bp_e);
            bp_e *= bp_e;
            if (bp_e > ex->excitation) {
                st->change_amp[ch][i] = bp_e - ex->excitation;
                st->total_change += st->change_amp[ch][i];
                ex->excitation = ex->excitation_init = bp_e;
                ex->excitation_dist = 0.0f;
            }
            if (ex->excitation > 0.0f) {
                ex->excitation -= av_clipf((1/expf(ex->excitation_dist)), ex->excitation_init/20, ex->excitation_init/1.09);
                ex->excitation = FFMAX(ex->excitation, 0.0f);
                ex->excitation_dist += 1.0f;
            }
        }
    }
}
