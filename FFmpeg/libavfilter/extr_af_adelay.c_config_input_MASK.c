#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int channels; int format; float sample_rate; TYPE_4__* dst; } ;
struct TYPE_9__ {int nb_delays; char* delays; float padding; int /*<<< orphan*/  delay_channel; int /*<<< orphan*/  max_delay; int /*<<< orphan*/  block_align; TYPE_1__* chandelay; scalar_t__ all; } ;
struct TYPE_8__ {float delay; int /*<<< orphan*/  samples; } ;
typedef  TYPE_1__ ChanDelay ;
typedef  TYPE_2__ AudioDelayContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  AV_SAMPLE_FMT_DBLP 132 
#define  AV_SAMPLE_FMT_FLTP 131 
#define  AV_SAMPLE_FMT_S16P 130 
#define  AV_SAMPLE_FMT_S32P 129 
#define  AV_SAMPLE_FMT_U8P 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 float FUNC2 (float,float) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (float,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,char*,float*,...) ; 
 char* FUNC8 (char*,char*,char**) ; 
 int /*<<< orphan*/  delay_channel_dblp ; 
 int /*<<< orphan*/  delay_channel_fltp ; 
 int /*<<< orphan*/  delay_channel_s16p ; 
 int /*<<< orphan*/  delay_channel_s32p ; 
 int /*<<< orphan*/  delay_channel_u8p ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioDelayContext *s = ctx->priv;
    char *p, *arg, *saveptr = NULL;
    int i;

    s->chandelay = FUNC3(inlink->channels, sizeof(*s->chandelay));
    if (!s->chandelay)
        return FUNC0(ENOMEM);
    s->nb_delays = inlink->channels;
    s->block_align = FUNC4(inlink->format);

    p = s->delays;
    for (i = 0; i < s->nb_delays; i++) {
        ChanDelay *d = &s->chandelay[i];
        float delay, div;
        char type = 0;
        int ret;

        if (!(arg = FUNC8(p, "|", &saveptr)))
            break;

        p = NULL;

        ret = FUNC7(arg, "%d%c", &d->delay, &type);
        if (ret != 2 || type != 'S') {
            div = type == 's' ? 1.0 : 1000.0;
            FUNC7(arg, "%f", &delay);
            d->delay = delay * inlink->sample_rate / div;
        }

        if (d->delay < 0) {
            FUNC5(ctx, AV_LOG_ERROR, "Delay must be non negative number.\n");
            return FUNC0(EINVAL);
        }
    }

    if (s->all && i) {
        for (int j = i; j < s->nb_delays; j++)
            s->chandelay[j].delay = s->chandelay[i-1].delay;
    }

    s->padding = s->chandelay[0].delay;
    for (i = 1; i < s->nb_delays; i++) {
        ChanDelay *d = &s->chandelay[i];

        s->padding = FUNC2(s->padding, d->delay);
    }

    if (s->padding) {
        for (i = 0; i < s->nb_delays; i++) {
            ChanDelay *d = &s->chandelay[i];

            d->delay -= s->padding;
        }
    }

    for (i = 0; i < s->nb_delays; i++) {
        ChanDelay *d = &s->chandelay[i];

        if (!d->delay)
            continue;

        d->samples = FUNC6(d->delay, s->block_align);
        if (!d->samples)
            return FUNC0(ENOMEM);

        s->max_delay = FUNC1(s->max_delay, d->delay);
    }

    switch (inlink->format) {
    case AV_SAMPLE_FMT_U8P : s->delay_channel = delay_channel_u8p ; break;
    case AV_SAMPLE_FMT_S16P: s->delay_channel = delay_channel_s16p; break;
    case AV_SAMPLE_FMT_S32P: s->delay_channel = delay_channel_s32p; break;
    case AV_SAMPLE_FMT_FLTP: s->delay_channel = delay_channel_fltp; break;
    case AV_SAMPLE_FMT_DBLP: s->delay_channel = delay_channel_dblp; break;
    }

    return 0;
}