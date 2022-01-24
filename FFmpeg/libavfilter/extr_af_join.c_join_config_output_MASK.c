#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_14__ {int nb_inputs; TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_13__ {int channel_layout; TYPE_4__* src; } ;
struct TYPE_12__ {size_t input; int in_channel; int out_channel; int /*<<< orphan*/  in_channel_idx; } ;
struct TYPE_11__ {int nb_channels; TYPE_2__* channels; } ;
typedef  TYPE_1__ JoinContext ;
typedef  TYPE_2__ ChannelMap ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*,int*) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    JoinContext       *s = ctx->priv;
    uint64_t *inputs;   // nth element tracks which channels are used from nth input
    int i, ret = 0;

    /* initialize inputs to user-specified mappings */
    if (!(inputs = FUNC6(ctx->nb_inputs, sizeof(*inputs))))
        return FUNC0(ENOMEM);
    for (i = 0; i < s->nb_channels; i++) {
        ChannelMap *ch = &s->channels[i];
        AVFilterLink *inlink;

        if (ch->input < 0)
            continue;

        inlink = ctx->inputs[ch->input];

        if (!ch->in_channel)
            ch->in_channel = FUNC1(inlink->channel_layout,
                                                               ch->in_channel_idx);

        if (!(ch->in_channel & inlink->channel_layout)) {
            FUNC5(ctx, AV_LOG_ERROR, "Requested channel %s is not present in "
                   "input stream #%d.\n", FUNC4(ch->in_channel),
                   ch->input);
            ret = FUNC0(EINVAL);
            goto fail;
        }

        inputs[ch->input] |= ch->in_channel;
    }

    /* guess channel maps when not explicitly defined */
    /* first try unused matching channels */
    for (i = 0; i < s->nb_channels; i++) {
        ChannelMap *ch = &s->channels[i];

        if (ch->input < 0)
            FUNC8(ctx, ch, inputs);
    }

    /* if the above failed, try to find _any_ unused input channel */
    for (i = 0; i < s->nb_channels; i++) {
        ChannelMap *ch = &s->channels[i];

        if (ch->input < 0)
            FUNC7(ctx, ch, inputs);

        if (ch->input < 0) {
            FUNC5(ctx, AV_LOG_ERROR, "Could not find input channel for "
                   "output channel '%s'.\n",
                   FUNC4(ch->out_channel));
            goto fail;
        }

        ch->in_channel_idx = FUNC3(ctx->inputs[ch->input]->channel_layout,
                                                                 ch->in_channel);
    }

    /* print mappings */
    FUNC5(ctx, AV_LOG_VERBOSE, "mappings: ");
    for (i = 0; i < s->nb_channels; i++) {
        ChannelMap *ch = &s->channels[i];
        FUNC5(ctx, AV_LOG_VERBOSE, "%d.%s => %s ", ch->input,
               FUNC4(ch->in_channel),
               FUNC4(ch->out_channel));
    }
    FUNC5(ctx, AV_LOG_VERBOSE, "\n");

    for (i = 0; i < ctx->nb_inputs; i++) {
        if (!inputs[i])
            FUNC5(ctx, AV_LOG_WARNING, "No channels are used from input "
                   "stream %d.\n", i);
    }

fail:
    FUNC2(&inputs);
    return ret;
}