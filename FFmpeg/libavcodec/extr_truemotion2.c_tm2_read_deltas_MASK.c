#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int** deltas; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ TM2Context ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int TM2_DELTAS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(TM2Context *ctx, int stream_id)
{
    int d, mb;
    int i, v;

    d  = FUNC2(&ctx->gb, 9);
    mb = FUNC2(&ctx->gb, 5);

    FUNC0(mb < 32);
    if ((d < 1) || (d > TM2_DELTAS) || (mb < 1)) {
        FUNC1(ctx->avctx, AV_LOG_ERROR, "Incorrect delta table: %i deltas x %i bits\n", d, mb);
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < d; i++) {
        v = FUNC3(&ctx->gb, mb);
        if (v & (1 << (mb - 1)))
            ctx->deltas[stream_id][i] = v - (1U << mb);
        else
            ctx->deltas[stream_id][i] = v;
    }
    for (; i < TM2_DELTAS; i++)
        ctx->deltas[stream_id][i] = 0;

    return 0;
}