
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t samplerate_index; scalar_t__ profile; int pb; } ;
struct TYPE_7__ {int predictor_reset_group; int* prediction_used; int predictor_present; int max_sfb; } ;
struct TYPE_6__ {TYPE_2__ ics; } ;
typedef TYPE_1__ SingleChannelElement ;
typedef TYPE_2__ IndividualChannelStream ;
typedef TYPE_3__ AACEncContext ;


 int FFMIN (int ,int ) ;
 scalar_t__ FF_PROFILE_AAC_MAIN ;
 int * ff_aac_pred_sfb_max ;
 int put_bits (int *,int,int) ;

void ff_aac_encode_main_pred(AACEncContext *s, SingleChannelElement *sce)
{
    int sfb;
    IndividualChannelStream *ics = &sce->ics;
    const int pmax = FFMIN(ics->max_sfb, ff_aac_pred_sfb_max[s->samplerate_index]);

    if (s->profile != FF_PROFILE_AAC_MAIN ||
        !ics->predictor_present)
        return;

    put_bits(&s->pb, 1, !!ics->predictor_reset_group);
    if (ics->predictor_reset_group)
        put_bits(&s->pb, 5, ics->predictor_reset_group);
    for (sfb = 0; sfb < pmax; sfb++)
        put_bits(&s->pb, 1, ics->prediction_used[sfb]);
}
