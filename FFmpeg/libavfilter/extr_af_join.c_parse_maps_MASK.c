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
typedef  int uint64_t ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {char* map; int channel_layout; int inputs; TYPE_1__* channels; } ;
struct TYPE_6__ {int input; int in_channel; int in_channel_idx; } ;
typedef  TYPE_2__ JoinContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    JoinContext *s = ctx->priv;
    char separator = '|';
    char *cur      = s->map;

    while (cur && *cur) {
        char *sep, *next, *p;
        uint64_t in_channel = 0, out_channel = 0;
        int input_idx, out_ch_idx, in_ch_idx;

        next = FUNC4(cur, separator);
        if (next)
            *next++ = 0;

        /* split the map into input and output parts */
        if (!(sep = FUNC4(cur, '-'))) {
            FUNC3(ctx, AV_LOG_ERROR, "Missing separator '-' in channel "
                   "map '%s'\n", cur);
            return FUNC0(EINVAL);
        }
        *sep++ = 0;

#define PARSE_CHANNEL(str, var, inout)                                         \
        if (!(var = av_get_channel_layout(str))) {                             \
            av_log(ctx, AV_LOG_ERROR, "Invalid " inout " channel: %s.\n", str);\
            return AVERROR(EINVAL);                                            \
        }                                                                      \
        if (av_get_channel_layout_nb_channels(var) != 1) {                     \
            av_log(ctx, AV_LOG_ERROR, "Channel map describes more than one "   \
                   inout " channel.\n");                                       \
            return AVERROR(EINVAL);                                            \
        }

        /* parse output channel */
        PARSE_CHANNEL(sep, out_channel, "output");
        if (!(out_channel & s->channel_layout)) {
            FUNC3(ctx, AV_LOG_ERROR, "Output channel '%s' is not present in "
                   "requested channel layout.\n", sep);
            return FUNC0(EINVAL);
        }

        out_ch_idx = FUNC2(s->channel_layout,
                                                         out_channel);
        if (s->channels[out_ch_idx].input >= 0) {
            FUNC3(ctx, AV_LOG_ERROR, "Multiple maps for output channel "
                   "'%s'.\n", sep);
            return FUNC0(EINVAL);
        }

        /* parse input channel */
        input_idx = FUNC5(cur, &cur, 0);
        if (input_idx < 0 || input_idx >= s->inputs) {
            FUNC3(ctx, AV_LOG_ERROR, "Invalid input stream index: %d.\n",
                   input_idx);
            return FUNC0(EINVAL);
        }

        if (*cur)
            cur++;

        in_ch_idx = FUNC5(cur, &p, 0);
        if (p == cur) {
            /* channel specifier is not a number,
             * try to parse as channel name */
            PARSE_CHANNEL(cur, in_channel, "input");
        }

        s->channels[out_ch_idx].input      = input_idx;
        if (in_channel)
            s->channels[out_ch_idx].in_channel = in_channel;
        else
            s->channels[out_ch_idx].in_channel_idx = in_ch_idx;

        cur = next;
    }
    return 0;
}