
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t samplerate_index; } ;
struct TYPE_7__ {scalar_t__* window_sequence; int* swb_offset; scalar_t__ predictor_reset_group; scalar_t__* prediction_used; scalar_t__ predictor_present; int max_sfb; } ;
struct TYPE_8__ {int * predictor_state; TYPE_1__ ics; int * prcoeffs; int * coeffs; } ;
typedef TYPE_2__ SingleChannelElement ;
typedef TYPE_3__ AACEncContext ;


 scalar_t__ EIGHT_SHORT_SEQUENCE ;
 int FFMIN (int ,int ) ;
 int * ff_aac_pred_sfb_max ;
 int predict (int *,int *,int *,int) ;
 int reset_all_predictors (int *) ;
 int reset_predictor_group (TYPE_2__*,scalar_t__) ;

void ff_aac_apply_main_pred(AACEncContext *s, SingleChannelElement *sce)
{
    int sfb, k;
    const int pmax = FFMIN(sce->ics.max_sfb, ff_aac_pred_sfb_max[s->samplerate_index]);

    if (sce->ics.window_sequence[0] != EIGHT_SHORT_SEQUENCE) {
        for (sfb = 0; sfb < pmax; sfb++) {
            for (k = sce->ics.swb_offset[sfb]; k < sce->ics.swb_offset[sfb + 1]; k++) {
                predict(&sce->predictor_state[k], &sce->coeffs[k], &sce->prcoeffs[k],
                        sce->ics.predictor_present && sce->ics.prediction_used[sfb]);
            }
        }
        if (sce->ics.predictor_reset_group) {
            reset_predictor_group(sce, sce->ics.predictor_reset_group);
        }
    } else {
        reset_all_predictors(sce->predictor_state);
    }
}
