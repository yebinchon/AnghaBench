
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* oc; int avctx; } ;
struct TYPE_9__ {int predictor_reset_group; scalar_t__* prediction_used; int max_sfb; } ;
struct TYPE_7__ {size_t sampling_index; } ;
struct TYPE_8__ {TYPE_1__ m4ac; } ;
typedef TYPE_3__ IndividualChannelStream ;
typedef int GetBitContext ;
typedef TYPE_4__ AACContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FFMIN (int ,int ) ;
 int av_log (int ,int ,char*) ;
 int * ff_aac_pred_sfb_max ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int decode_prediction(AACContext *ac, IndividualChannelStream *ics,
                             GetBitContext *gb)
{
    int sfb;
    if (get_bits1(gb)) {
        ics->predictor_reset_group = get_bits(gb, 5);
        if (ics->predictor_reset_group == 0 ||
            ics->predictor_reset_group > 30) {
            av_log(ac->avctx, AV_LOG_ERROR,
                   "Invalid Predictor Reset Group.\n");
            return AVERROR_INVALIDDATA;
        }
    }
    for (sfb = 0; sfb < FFMIN(ics->max_sfb, ff_aac_pred_sfb_max[ac->oc[1].m4ac.sampling_index]); sfb++) {
        ics->prediction_used[sfb] = get_bits1(gb);
    }
    return 0;
}
