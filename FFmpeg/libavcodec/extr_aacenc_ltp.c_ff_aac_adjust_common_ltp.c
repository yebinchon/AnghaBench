
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int common_window; TYPE_3__* ch; } ;
struct TYPE_6__ {int present; int* used; } ;
struct TYPE_7__ {scalar_t__* window_sequence; int predictor_present; TYPE_1__ ltp; int max_sfb; } ;
struct TYPE_8__ {TYPE_2__ ics; } ;
typedef TYPE_3__ SingleChannelElement ;
typedef TYPE_4__ ChannelElement ;
typedef int AACEncContext ;


 scalar_t__ EIGHT_SHORT_SEQUENCE ;
 int FFMIN (int ,int ) ;
 int MAX_LTP_LONG_SFB ;

void ff_aac_adjust_common_ltp(AACEncContext *s, ChannelElement *cpe)
{
    int sfb, count = 0;
    SingleChannelElement *sce0 = &cpe->ch[0];
    SingleChannelElement *sce1 = &cpe->ch[1];

    if (!cpe->common_window ||
        sce0->ics.window_sequence[0] == EIGHT_SHORT_SEQUENCE ||
        sce1->ics.window_sequence[0] == EIGHT_SHORT_SEQUENCE) {
        sce0->ics.ltp.present = 0;
        return;
    }

    for (sfb = 0; sfb < FFMIN(sce0->ics.max_sfb, MAX_LTP_LONG_SFB); sfb++) {
        int sum = sce0->ics.ltp.used[sfb] + sce1->ics.ltp.used[sfb];
        if (sum != 2) {
            sce0->ics.ltp.used[sfb] = 0;
        } else {
            count++;
        }
    }

    sce0->ics.ltp.present = !!count;
    sce0->ics.predictor_present = !!count;
}
