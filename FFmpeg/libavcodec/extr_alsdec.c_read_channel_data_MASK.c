#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int channels; } ;
struct TYPE_7__ {unsigned int master_channel; scalar_t__ time_diff_index; void* time_diff_sign; void** weighting; void* time_diff_flag; void* stop_flag; } ;
struct TYPE_6__ {TYPE_5__* avctx; scalar_t__ ltp_lag_length; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ ALSDecContext ;
typedef  TYPE_2__ ALSChannelData ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(ALSDecContext *ctx, ALSChannelData *cd, int c)
{
    GetBitContext *gb       = &ctx->gb;
    ALSChannelData *current = cd;
    unsigned int channels   = ctx->avctx->channels;
    int entries             = 0;

    while (entries < channels && !(current->stop_flag = FUNC5(gb))) {
        current->master_channel = FUNC6(gb, FUNC2(channels));

        if (current->master_channel >= channels) {
            FUNC3(ctx->avctx, AV_LOG_ERROR, "Invalid master channel.\n");
            return AVERROR_INVALIDDATA;
        }

        if (current->master_channel != c) {
            current->time_diff_flag = FUNC5(gb);
            current->weighting[0]   = FUNC1(gb, 1, 16);
            current->weighting[1]   = FUNC1(gb, 2, 14);
            current->weighting[2]   = FUNC1(gb, 1, 16);

            if (current->time_diff_flag) {
                current->weighting[3] = FUNC1(gb, 1, 16);
                current->weighting[4] = FUNC1(gb, 1, 16);
                current->weighting[5] = FUNC1(gb, 1, 16);

                current->time_diff_sign  = FUNC5(gb);
                current->time_diff_index = FUNC4(gb, ctx->ltp_lag_length - 3) + 3;
            }
        }

        current++;
        entries++;
    }

    if (entries == channels) {
        FUNC3(ctx->avctx, AV_LOG_ERROR, "Damaged channel data.\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC0(gb);
    return 0;
}