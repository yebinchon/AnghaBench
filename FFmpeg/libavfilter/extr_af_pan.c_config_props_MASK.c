#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int channel_layout; int channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  format; TYPE_3__* dst; } ;
struct TYPE_7__ {int nb_output_channels; int** gain; int out_channel_layout; int* channel_map; int need_renorm; scalar_t__ pure_gains; int /*<<< orphan*/  swr; scalar_t__ need_renumber; } ;
typedef  TYPE_1__ PanContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (char*,int,char*,char*,double,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,double*,int) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *link)
{
    AVFilterContext *ctx = link->dst;
    PanContext *pan = ctx->priv;
    char buf[1024], *cur;
    int i, j, k, r;
    double t;

    if (pan->need_renumber) {
        // input channels were given by their name: renumber them
        for (i = j = 0; i < MAX_CHANNELS; i++) {
            if ((link->channel_layout >> i) & 1) {
                for (k = 0; k < pan->nb_output_channels; k++)
                    pan->gain[k][j] = pan->gain[k][i];
                j++;
            }
        }
    }

    // sanity check; can't be done in query_formats since the inlink
    // channel layout is unknown at that time
    if (link->channels > MAX_CHANNELS ||
        pan->nb_output_channels > MAX_CHANNELS) {
        FUNC2(ctx, AV_LOG_ERROR,
               "af_pan supports a maximum of %d channels. "
               "Feel free to ask for a higher limit.\n", MAX_CHANNELS);
        return AVERROR_PATCHWELCOME;
    }

    // init libswresample context
    pan->swr = FUNC6(pan->swr,
                                  pan->out_channel_layout, link->format, link->sample_rate,
                                  link->channel_layout,    link->format, link->sample_rate,
                                  0, ctx);
    if (!pan->swr)
        return FUNC0(ENOMEM);
    if (!link->channel_layout) {
        if (FUNC3(pan->swr, "ich", link->channels, 0) < 0)
            return FUNC0(EINVAL);
    }
    if (!pan->out_channel_layout) {
        if (FUNC3(pan->swr, "och", pan->nb_output_channels, 0) < 0)
            return FUNC0(EINVAL);
    }

    // gains are pure, init the channel mapping
    if (pan->pure_gains) {

        // get channel map from the pure gains
        for (i = 0; i < pan->nb_output_channels; i++) {
            int ch_id = -1;
            for (j = 0; j < link->channels; j++) {
                if (pan->gain[i][j]) {
                    ch_id = j;
                    break;
                }
            }
            pan->channel_map[i] = ch_id;
        }

        FUNC3(pan->swr, "icl", pan->out_channel_layout, 0);
        FUNC3(pan->swr, "uch", pan->nb_output_channels, 0);
        FUNC8(pan->swr, pan->channel_map);
    } else {
        // renormalize
        for (i = 0; i < pan->nb_output_channels; i++) {
            if (!((pan->need_renorm >> i) & 1))
                continue;
            t = 0;
            for (j = 0; j < link->channels; j++)
                t += FUNC4(pan->gain[i][j]);
            if (t > -1E-5 && t < 1E-5) {
                // t is almost 0 but not exactly, this is probably a mistake
                if (t)
                    FUNC2(ctx, AV_LOG_WARNING,
                           "Degenerate coefficients while renormalizing\n");
                continue;
            }
            for (j = 0; j < link->channels; j++)
                pan->gain[i][j] /= t;
        }
        FUNC3(pan->swr, "icl", link->channel_layout, 0);
        FUNC3(pan->swr, "ocl", pan->out_channel_layout, 0);
        FUNC9(pan->swr, pan->gain[0], pan->gain[1] - pan->gain[0]);
    }

    r = FUNC7(pan->swr);
    if (r < 0)
        return r;

    // summary
    for (i = 0; i < pan->nb_output_channels; i++) {
        cur = buf;
        for (j = 0; j < link->channels; j++) {
            r = FUNC5(cur, buf + sizeof(buf) - cur, "%s%.3g i%d",
                         j ? " + " : "", pan->gain[i][j], j);
            cur += FUNC1(buf + sizeof(buf) - cur, r);
        }
        FUNC2(ctx, AV_LOG_VERBOSE, "o%d = %s\n", i, buf);
    }
    // add channel mapping summary if possible
    if (pan->pure_gains) {
        FUNC2(ctx, AV_LOG_INFO, "Pure channel mapping detected:");
        for (i = 0; i < pan->nb_output_channels; i++)
            if (pan->channel_map[i] < 0)
                FUNC2(ctx, AV_LOG_INFO, " M");
            else
                FUNC2(ctx, AV_LOG_INFO, " %d", pan->channel_map[i]);
        FUNC2(ctx, AV_LOG_INFO, "\n");
        return 0;
    }
    return 0;
}