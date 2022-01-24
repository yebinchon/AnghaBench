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
struct TYPE_10__ {TYPE_2__* oc; int /*<<< orphan*/  avctx; } ;
struct TYPE_9__ {int predictor_reset_group; scalar_t__* prediction_used; int /*<<< orphan*/  max_sfb; } ;
struct TYPE_7__ {size_t sampling_index; } ;
struct TYPE_8__ {TYPE_1__ m4ac; } ;
typedef  TYPE_3__ IndividualChannelStream ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ AACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ff_aac_pred_sfb_max ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AACContext *ac, IndividualChannelStream *ics,
                             GetBitContext *gb)
{
    int sfb;
    if (FUNC3(gb)) {
        ics->predictor_reset_group = FUNC2(gb, 5);
        if (ics->predictor_reset_group == 0 ||
            ics->predictor_reset_group > 30) {
            FUNC1(ac->avctx, AV_LOG_ERROR,
                   "Invalid Predictor Reset Group.\n");
            return AVERROR_INVALIDDATA;
        }
    }
    for (sfb = 0; sfb < FUNC0(ics->max_sfb, ff_aac_pred_sfb_max[ac->oc[1].m4ac.sampling_index]); sfb++) {
        ics->prediction_used[sfb] = FUNC3(gb);
    }
    return 0;
}