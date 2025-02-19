
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* ch; } ;
struct TYPE_17__ {size_t samplerate_index; float* scoefs; size_t cur_channel; int lambda; int (* abs_pow34 ) (float*,float*,int const) ;TYPE_2__ psy; } ;
struct TYPE_16__ {int threshold; } ;
struct TYPE_14__ {scalar_t__* window_sequence; int predictor_present; int predictor_initialized; int* predictor_reset_count; int* swb_offset; int* prediction_used; int max_sfb; } ;
struct TYPE_15__ {int* prcoeffs; int* coeffs; int* band_alt; int* band_type; TYPE_3__ ics; int * sf_idx; scalar_t__* zeroes; int predictor_state; } ;
struct TYPE_12__ {TYPE_5__* psy_bands; } ;
typedef TYPE_4__ SingleChannelElement ;
typedef TYPE_5__ FFPsyBand ;
typedef TYPE_6__ AACEncContext ;


 scalar_t__ EIGHT_SHORT_SEQUENCE ;
 int FFMIN (int ,int ) ;
 int INFINITY ;
 int INTENSITY_BT2 ;
 int const MAX_PREDICTORS ;
 int NOISE_BT ;
 int PRED_SFB_START ;
 int const RESERVED_BT ;
 int RESTORE_PRED (TYPE_4__*,int) ;
 int av_clip (int ,int const,int const) ;
 int * ff_aac_pred_sfb_max ;
 int find_max_val (int,int const,float*) ;
 int find_min_book (int ,int ) ;
 int memcpy (int*,int*,int) ;
 int memset (int**,int ,int) ;
 float quantize_and_encode_band_cost (TYPE_6__*,int *,float*,float*,float*,int const,int ,int const,int,int ,int*,int *,int ) ;
 int reset_all_predictors (int ) ;
 int stub1 (float*,float*,int const) ;
 int stub2 (float*,float*,int const) ;
 int stub3 (float*,float*,int const) ;
 int update_pred_resets (TYPE_4__*) ;

void ff_aac_search_for_pred(AACEncContext *s, SingleChannelElement *sce)
{
    int sfb, i, count = 0, cost_coeffs = 0, cost_pred = 0;
    const int pmax = FFMIN(sce->ics.max_sfb, ff_aac_pred_sfb_max[s->samplerate_index]);
    float *O34 = &s->scoefs[128*0], *P34 = &s->scoefs[128*1];
    float *SENT = &s->scoefs[128*2], *S34 = &s->scoefs[128*3];
    float *QERR = &s->scoefs[128*4];

    if (sce->ics.window_sequence[0] == EIGHT_SHORT_SEQUENCE) {
        sce->ics.predictor_present = 0;
        return;
    }

    if (!sce->ics.predictor_initialized) {
        reset_all_predictors(sce->predictor_state);
        sce->ics.predictor_initialized = 1;
        memcpy(sce->prcoeffs, sce->coeffs, 1024*sizeof(float));
        for (i = 1; i < 31; i++)
            sce->ics.predictor_reset_count[i] = i;
    }

    update_pred_resets(sce);
    memcpy(sce->band_alt, sce->band_type, sizeof(sce->band_type));

    for (sfb = PRED_SFB_START; sfb < pmax; sfb++) {
        int cost1, cost2, cb_p;
        float dist1, dist2, dist_spec_err = 0.0f;
        const int cb_n = sce->zeroes[sfb] ? 0 : sce->band_type[sfb];
        const int cb_min = sce->zeroes[sfb] ? 0 : 1;
        const int cb_max = sce->zeroes[sfb] ? 0 : RESERVED_BT;
        const int start_coef = sce->ics.swb_offset[sfb];
        const int num_coeffs = sce->ics.swb_offset[sfb + 1] - start_coef;
        const FFPsyBand *band = &s->psy.ch[s->cur_channel].psy_bands[sfb];

        if (start_coef + num_coeffs > MAX_PREDICTORS ||
            (s->cur_channel && sce->band_type[sfb] >= INTENSITY_BT2) ||
            sce->band_type[sfb] == NOISE_BT)
            continue;


        s->abs_pow34(O34, &sce->coeffs[start_coef], num_coeffs);
        dist1 = quantize_and_encode_band_cost(s, ((void*)0), &sce->coeffs[start_coef], ((void*)0),
                                              O34, num_coeffs, sce->sf_idx[sfb],
                                              cb_n, s->lambda / band->threshold, INFINITY, &cost1, ((void*)0), 0);
        cost_coeffs += cost1;


        for (i = 0; i < num_coeffs; i++)
            SENT[i] = sce->coeffs[start_coef + i] - sce->prcoeffs[start_coef + i];
        s->abs_pow34(S34, SENT, num_coeffs);
        if (cb_n < RESERVED_BT)
            cb_p = av_clip(find_min_book(find_max_val(1, num_coeffs, S34), sce->sf_idx[sfb]), cb_min, cb_max);
        else
            cb_p = cb_n;
        quantize_and_encode_band_cost(s, ((void*)0), SENT, QERR, S34, num_coeffs,
                                      sce->sf_idx[sfb], cb_p, s->lambda / band->threshold, INFINITY,
                                      &cost2, ((void*)0), 0);


        for (i = 0; i < num_coeffs; i++)
            sce->prcoeffs[start_coef + i] += QERR[i] != 0.0f ? (sce->prcoeffs[start_coef + i] - QERR[i]) : 0.0f;
        s->abs_pow34(P34, &sce->prcoeffs[start_coef], num_coeffs);
        if (cb_n < RESERVED_BT)
            cb_p = av_clip(find_min_book(find_max_val(1, num_coeffs, P34), sce->sf_idx[sfb]), cb_min, cb_max);
        else
            cb_p = cb_n;
        dist2 = quantize_and_encode_band_cost(s, ((void*)0), &sce->prcoeffs[start_coef], ((void*)0),
                                              P34, num_coeffs, sce->sf_idx[sfb],
                                              cb_p, s->lambda / band->threshold, INFINITY, ((void*)0), ((void*)0), 0);
        for (i = 0; i < num_coeffs; i++)
            dist_spec_err += (O34[i] - P34[i])*(O34[i] - P34[i]);
        dist_spec_err *= s->lambda / band->threshold;
        dist2 += dist_spec_err;

        if (dist2 <= dist1 && cb_p <= cb_n) {
            cost_pred += cost2;
            sce->ics.prediction_used[sfb] = 1;
            sce->band_alt[sfb] = cb_n;
            sce->band_type[sfb] = cb_p;
            count++;
        } else {
            cost_pred += cost1;
            sce->band_alt[sfb] = cb_p;
        }
    }

    if (count && cost_coeffs < cost_pred) {
        count = 0;
        for (sfb = PRED_SFB_START; sfb < pmax; sfb++)
            RESTORE_PRED(sce, sfb);
        memset(&sce->ics.prediction_used, 0, sizeof(sce->ics.prediction_used));
    }

    sce->ics.predictor_present = !!count;
}
