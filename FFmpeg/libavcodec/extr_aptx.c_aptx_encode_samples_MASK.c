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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * channels; int /*<<< orphan*/  hd; int /*<<< orphan*/  sync_idx; } ;
typedef  TYPE_1__ AptXContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NB_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(AptXContext *ctx,
                                int32_t samples[NB_CHANNELS][4],
                                uint8_t *output)
{
    int channel;
    for (channel = 0; channel < NB_CHANNELS; channel++)
        FUNC2(&ctx->channels[channel], samples[channel], ctx->hd);

    FUNC3(ctx->channels, &ctx->sync_idx);

    for (channel = 0; channel < NB_CHANNELS; channel++) {
        FUNC4(&ctx->channels[channel], ctx->hd);
        if (ctx->hd)
            FUNC1(output + 3*channel,
                    FUNC6(&ctx->channels[channel]));
        else
            FUNC0(output + 2*channel,
                    FUNC5(&ctx->channels[channel]));
    }
}