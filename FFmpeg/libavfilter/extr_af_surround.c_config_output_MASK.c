#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int channels; int /*<<< orphan*/  channel_layout; TYPE_3__* src; } ;
struct TYPE_6__ {int buf_size; int nb_out_channels; void* output; void* overlap_buffer; int /*<<< orphan*/  lfe_out; int /*<<< orphan*/ * output_levels; int /*<<< orphan*/  bc_out; int /*<<< orphan*/  br_out; int /*<<< orphan*/  bl_out; int /*<<< orphan*/  sr_out; int /*<<< orphan*/  sl_out; int /*<<< orphan*/  fr_out; int /*<<< orphan*/  fl_out; int /*<<< orphan*/  fc_out; int /*<<< orphan*/  level_out; int /*<<< orphan*/ * irdft; } ;
typedef  TYPE_1__ AudioSurroundContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CH_BACK_CENTER ; 
 int /*<<< orphan*/  AV_CH_BACK_LEFT ; 
 int /*<<< orphan*/  AV_CH_BACK_RIGHT ; 
 int /*<<< orphan*/  AV_CH_FRONT_CENTER ; 
 int /*<<< orphan*/  AV_CH_FRONT_LEFT ; 
 int /*<<< orphan*/  AV_CH_FRONT_RIGHT ; 
 int /*<<< orphan*/  AV_CH_LOW_FREQUENCY ; 
 int /*<<< orphan*/  AV_CH_SIDE_LEFT ; 
 int /*<<< orphan*/  AV_CH_SIDE_RIGHT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IDFT_C2R ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioSurroundContext *s = ctx->priv;
    int ch;

    s->irdft = FUNC1(outlink->channels, sizeof(*s->irdft));
    if (!s->irdft)
        return FUNC0(ENOMEM);

    for (ch = 0; ch < outlink->channels; ch++) {
        s->irdft[ch] = FUNC4(FUNC6(s->buf_size), IDFT_C2R);
        if (!s->irdft[ch])
            return FUNC0(ENOMEM);
    }
    s->nb_out_channels = outlink->channels;
    s->output_levels = FUNC3(s->nb_out_channels, sizeof(*s->output_levels));
    if (!s->output_levels)
        return FUNC0(ENOMEM);
    for (ch = 0;  ch < s->nb_out_channels; ch++)
        s->output_levels[ch] = s->level_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_FRONT_CENTER);
    if (ch >= 0)
        s->output_levels[ch] *= s->fc_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_FRONT_LEFT);
    if (ch >= 0)
        s->output_levels[ch] *= s->fl_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_FRONT_RIGHT);
    if (ch >= 0)
        s->output_levels[ch] *= s->fr_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_SIDE_LEFT);
    if (ch >= 0)
        s->output_levels[ch] *= s->sl_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_SIDE_RIGHT);
    if (ch >= 0)
        s->output_levels[ch] *= s->sr_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_BACK_LEFT);
    if (ch >= 0)
        s->output_levels[ch] *= s->bl_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_BACK_RIGHT);
    if (ch >= 0)
        s->output_levels[ch] *= s->br_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_BACK_CENTER);
    if (ch >= 0)
        s->output_levels[ch] *= s->bc_out;
    ch = FUNC2(outlink->channel_layout, AV_CH_LOW_FREQUENCY);
    if (ch >= 0)
        s->output_levels[ch] *= s->lfe_out;

    s->output = FUNC5(outlink, s->buf_size * 2);
    s->overlap_buffer = FUNC5(outlink, s->buf_size * 2);
    if (!s->overlap_buffer || !s->output)
        return FUNC0(ENOMEM);

    return 0;
}