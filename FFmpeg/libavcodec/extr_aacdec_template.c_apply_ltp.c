
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int16_t ;
typedef scalar_t__ UINTFLOAT ;
struct TYPE_11__ {int lag; scalar_t__* used; int coef; } ;
struct TYPE_14__ {int* swb_offset; scalar_t__* window_sequence; int max_sfb; TYPE_2__ ltp; } ;
struct TYPE_13__ {scalar_t__ present; } ;
struct TYPE_12__ {int (* apply_tns ) (scalar_t__*,TYPE_4__*,TYPE_5__*,int ) ;int (* windowing_and_mdct_ltp ) (TYPE_3__*,scalar_t__*,scalar_t__*,TYPE_5__*) ;scalar_t__* buf_mdct; } ;
struct TYPE_10__ {int * coeffs; TYPE_5__ ics; TYPE_4__ tns; int * ltp_state; scalar_t__* ret; } ;
typedef TYPE_1__ SingleChannelElement ;
typedef TYPE_2__ LongTermPrediction ;
typedef scalar_t__ INTFLOAT ;
typedef TYPE_3__ AACContext ;


 scalar_t__ AAC_MUL30 (int ,int ) ;
 scalar_t__ EIGHT_SHORT_SEQUENCE ;
 int FFMIN (int ,int ) ;
 int MAX_LTP_LONG_SFB ;
 int memset (scalar_t__*,int ,int) ;
 int stub1 (TYPE_3__*,scalar_t__*,scalar_t__*,TYPE_5__*) ;
 int stub2 (scalar_t__*,TYPE_4__*,TYPE_5__*,int ) ;

__attribute__((used)) static void apply_ltp(AACContext *ac, SingleChannelElement *sce)
{
    const LongTermPrediction *ltp = &sce->ics.ltp;
    const uint16_t *offsets = sce->ics.swb_offset;
    int i, sfb;

    if (sce->ics.window_sequence[0] != EIGHT_SHORT_SEQUENCE) {
        INTFLOAT *predTime = sce->ret;
        INTFLOAT *predFreq = ac->buf_mdct;
        int16_t num_samples = 2048;

        if (ltp->lag < 1024)
            num_samples = ltp->lag + 1024;
        for (i = 0; i < num_samples; i++)
            predTime[i] = AAC_MUL30(sce->ltp_state[i + 2048 - ltp->lag], ltp->coef);
        memset(&predTime[i], 0, (2048 - i) * sizeof(*predTime));

        ac->windowing_and_mdct_ltp(ac, predFreq, predTime, &sce->ics);

        if (sce->tns.present)
            ac->apply_tns(predFreq, &sce->tns, &sce->ics, 0);

        for (sfb = 0; sfb < FFMIN(sce->ics.max_sfb, MAX_LTP_LONG_SFB); sfb++)
            if (ltp->used[sfb])
                for (i = offsets[sfb]; i < offsets[sfb + 1]; i++)
                    sce->coeffs[i] += (UINTFLOAT)predFreq[i];
    }
}
