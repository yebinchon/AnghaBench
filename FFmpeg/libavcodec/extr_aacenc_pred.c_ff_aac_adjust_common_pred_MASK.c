#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct AACISError {scalar_t__ error; scalar_t__ pass; } ;
struct TYPE_13__ {size_t samplerate_index; } ;
struct TYPE_12__ {int /*<<< orphan*/  common_window; TYPE_2__* ch; } ;
struct TYPE_10__ {int const max_sfb; scalar_t__* window_sequence; int num_windows; int* group_len; int num_swb; int* prediction_used; int* swb_sizes; int predictor_present; } ;
struct TYPE_11__ {float* pcoeffs; TYPE_1__ ics; } ;
typedef  TYPE_2__ SingleChannelElement ;
typedef  TYPE_3__ ChannelElement ;
typedef  TYPE_4__ AACEncContext ;

/* Variables and functions */
 scalar_t__ EIGHT_SHORT_SEQUENCE ; 
 int FUNC0 (int const,int const) ; 
 int PRED_SFB_START ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 struct AACISError FUNC2 (TYPE_4__*,TYPE_3__*,int,int,int,float,float,float,int,int) ; 
 int const* ff_aac_pred_sfb_max ; 

void FUNC3(AACEncContext *s, ChannelElement *cpe)
{
    int start, w, w2, g, i, count = 0;
    SingleChannelElement *sce0 = &cpe->ch[0];
    SingleChannelElement *sce1 = &cpe->ch[1];
    const int pmax0 = FUNC0(sce0->ics.max_sfb, ff_aac_pred_sfb_max[s->samplerate_index]);
    const int pmax1 = FUNC0(sce1->ics.max_sfb, ff_aac_pred_sfb_max[s->samplerate_index]);
    const int pmax  = FUNC0(pmax0, pmax1);

    if (!cpe->common_window ||
        sce0->ics.window_sequence[0] == EIGHT_SHORT_SEQUENCE ||
        sce1->ics.window_sequence[0] == EIGHT_SHORT_SEQUENCE)
        return;

    for (w = 0; w < sce0->ics.num_windows; w += sce0->ics.group_len[w]) {
        start = 0;
        for (g = 0; g < sce0->ics.num_swb; g++) {
            int sfb = w*16+g;
            int sum = sce0->ics.prediction_used[sfb] + sce1->ics.prediction_used[sfb];
            float ener0 = 0.0f, ener1 = 0.0f, ener01 = 0.0f;
            struct AACISError ph_err1, ph_err2, *erf;
            if (sfb < PRED_SFB_START || sfb > pmax || sum != 2) {
                FUNC1(sce0, sfb);
                FUNC1(sce1, sfb);
                start += sce0->ics.swb_sizes[g];
                continue;
            }
            for (w2 = 0; w2 < sce0->ics.group_len[w]; w2++) {
                for (i = 0; i < sce0->ics.swb_sizes[g]; i++) {
                    float coef0 = sce0->pcoeffs[start+(w+w2)*128+i];
                    float coef1 = sce1->pcoeffs[start+(w+w2)*128+i];
                    ener0  += coef0*coef0;
                    ener1  += coef1*coef1;
                    ener01 += (coef0 + coef1)*(coef0 + coef1);
                }
            }
            ph_err1 = FUNC2(s, cpe, start, w, g,
                                             ener0, ener1, ener01, 1, -1);
            ph_err2 = FUNC2(s, cpe, start, w, g,
                                             ener0, ener1, ener01, 1, +1);
            erf = ph_err1.error < ph_err2.error ? &ph_err1 : &ph_err2;
            if (erf->pass) {
                sce0->ics.prediction_used[sfb] = 1;
                sce1->ics.prediction_used[sfb] = 1;
                count++;
            } else {
                FUNC1(sce0, sfb);
                FUNC1(sce1, sfb);
            }
            start += sce0->ics.swb_sizes[g];
        }
    }

    sce1->ics.predictor_present = sce0->ics.predictor_present = !!count;
}