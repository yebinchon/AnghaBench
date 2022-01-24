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
struct TYPE_3__ {int /*<<< orphan*/ * channels; int /*<<< orphan*/  sync_idx; int /*<<< orphan*/  hd; } ;
typedef  TYPE_1__ AptXContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int NB_CHANNELS ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AptXContext *ctx,
                                const uint8_t *input,
                                int32_t samples[NB_CHANNELS][4])
{
    int channel, ret;

    for (channel = 0; channel < NB_CHANNELS; channel++) {
        FUNC4(&ctx->channels[channel]);

        if (ctx->hd)
            FUNC7(&ctx->channels[channel],
                                   FUNC1(input + 3*channel));
        else
            FUNC6(&ctx->channels[channel],
                                 FUNC0(input + 2*channel));
        FUNC5(&ctx->channels[channel], ctx->hd);
    }

    ret = FUNC2(ctx->channels, &ctx->sync_idx);

    for (channel = 0; channel < NB_CHANNELS; channel++)
        FUNC3(&ctx->channels[channel], samples[channel]);

    return ret;
}