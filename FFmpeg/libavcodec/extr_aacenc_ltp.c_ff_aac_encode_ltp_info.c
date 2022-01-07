
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ profile; int pb; } ;
struct TYPE_7__ {int * used; int coef_idx; int lag; int present; } ;
struct TYPE_9__ {TYPE_1__ ltp; int max_sfb; int predictor_present; } ;
struct TYPE_8__ {TYPE_3__ ics; } ;
typedef TYPE_2__ SingleChannelElement ;
typedef TYPE_3__ IndividualChannelStream ;
typedef TYPE_4__ AACEncContext ;


 int FFMIN (int ,int ) ;
 scalar_t__ FF_PROFILE_AAC_LTP ;
 int MAX_LTP_LONG_SFB ;
 int put_bits (int *,int,int ) ;

void ff_aac_encode_ltp_info(AACEncContext *s, SingleChannelElement *sce,
                            int common_window)
{
    int i;
    IndividualChannelStream *ics = &sce->ics;
    if (s->profile != FF_PROFILE_AAC_LTP || !ics->predictor_present)
        return;
    if (common_window)
        put_bits(&s->pb, 1, 0);
    put_bits(&s->pb, 1, ics->ltp.present);
    if (!ics->ltp.present)
        return;
    put_bits(&s->pb, 11, ics->ltp.lag);
    put_bits(&s->pb, 3, ics->ltp.coef_idx);
    for (i = 0; i < FFMIN(ics->max_sfb, MAX_LTP_LONG_SFB); i++)
        put_bits(&s->pb, 1, ics->ltp.used[i]);
}
