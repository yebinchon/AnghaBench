#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* n_filt; int** length; int** order; int** direction; int*** coef_idx; int /*<<< orphan*/  present; } ;
typedef  TYPE_2__ TemporalNoiseShaping ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_7__ {scalar_t__* window_sequence; int num_windows; } ;
struct TYPE_9__ {TYPE_2__ tns; TYPE_1__ ics; } ;
typedef  TYPE_3__ SingleChannelElement ;
typedef  TYPE_4__ AACEncContext ;

/* Variables and functions */
 scalar_t__ EIGHT_SHORT_SEQUENCE ; 
 int TNS_Q_BITS ; 
 int TNS_Q_BITS_IS8 ; 
 int FUNC0 (int*,int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int const) ; 

void FUNC2(AACEncContext *s, SingleChannelElement *sce)
{
    TemporalNoiseShaping *tns = &sce->tns;
    int i, w, filt, coef_compress = 0, coef_len;
    const int is8 = sce->ics.window_sequence[0] == EIGHT_SHORT_SEQUENCE;
    const int c_bits = is8 ? TNS_Q_BITS_IS8 == 4 : TNS_Q_BITS == 4;

    if (!sce->tns.present)
        return;

    for (i = 0; i < sce->ics.num_windows; i++) {
        FUNC1(&s->pb, 2 - is8, sce->tns.n_filt[i]);
        if (!tns->n_filt[i])
            continue;
        FUNC1(&s->pb, 1, c_bits);
        for (filt = 0; filt < tns->n_filt[i]; filt++) {
            FUNC1(&s->pb, 6 - 2 * is8, tns->length[i][filt]);
            FUNC1(&s->pb, 5 - 2 * is8, tns->order[i][filt]);
            if (!tns->order[i][filt])
                continue;
            FUNC1(&s->pb, 1, tns->direction[i][filt]);
            coef_compress = FUNC0(tns->coef_idx[i][filt],
                                            tns->order[i][filt], c_bits);
            FUNC1(&s->pb, 1, coef_compress);
            coef_len = c_bits + 3 - coef_compress;
            for (w = 0; w < tns->order[i][filt]; w++)
                FUNC1(&s->pb, coef_len, tns->coef_idx[i][filt][w]);
        }
    }
}