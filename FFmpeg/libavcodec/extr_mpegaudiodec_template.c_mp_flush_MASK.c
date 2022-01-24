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
struct TYPE_3__ {scalar_t__ dither_state; scalar_t__ last_buf_size; int /*<<< orphan*/  mdct_buf; int /*<<< orphan*/  synth_buf; } ;
typedef  TYPE_1__ MPADecodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(MPADecodeContext *ctx)
{
    FUNC0(ctx->synth_buf, 0, sizeof(ctx->synth_buf));
    FUNC0(ctx->mdct_buf, 0, sizeof(ctx->mdct_buf));
    ctx->last_buf_size = 0;
    ctx->dither_state = 0;
}