#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_10__ {TYPE_2__* priv; } ;
struct TYPE_9__ {int channels; scalar_t__ format; int /*<<< orphan*/  sample_rate; TYPE_4__* dst; } ;
struct TYPE_7__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_8__ {int nb_channels; int depth; int* fg; int /*<<< orphan*/  colors; TYPE_1__ frame_rate; int /*<<< orphan*/  nb_samples; } ;
typedef  TYPE_2__ AudioBitScopeContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_SAMPLE_FMT_S16P ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,char*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioBitScopeContext *s = ctx->priv;
    int ch;
    char *colors, *saveptr = NULL;

    s->nb_samples = FUNC1(1, FUNC5(inlink->sample_rate, s->frame_rate.den, s->frame_rate.num));
    s->nb_channels = inlink->channels;
    s->depth = inlink->format == AV_SAMPLE_FMT_S16P ? 16 : 32;

    s->fg = FUNC3(s->nb_channels, 4 * sizeof(*s->fg));
    if (!s->fg)
        return FUNC0(ENOMEM);

    colors = FUNC6(s->colors);
    if (!colors)
        return FUNC0(ENOMEM);

    for (ch = 0; ch < s->nb_channels; ch++) {
        uint8_t fg[4] = { 0xff, 0xff, 0xff, 0xff };
        char *color;

        color = FUNC7(ch == 0 ? colors : NULL, " |", &saveptr);
        if (color)
            FUNC4(fg, color, -1, ctx);
        s->fg[4 * ch + 0] = fg[0];
        s->fg[4 * ch + 1] = fg[1];
        s->fg[4 * ch + 2] = fg[2];
        s->fg[4 * ch + 3] = fg[3];
    }
    FUNC2(colors);

    return 0;
}