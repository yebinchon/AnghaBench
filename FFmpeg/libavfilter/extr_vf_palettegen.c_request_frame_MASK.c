#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv; TYPE_2__** inputs; } ;
struct TYPE_9__ {TYPE_3__* src; } ;
struct TYPE_8__ {int palette_pushed; scalar_t__ stats_mode; scalar_t__ nb_refs; } ;
typedef  TYPE_1__ PaletteGenContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ STATS_MODE_SINGLE_FRAMES ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    PaletteGenContext *s = ctx->priv;
    int r;

    r = FUNC1(inlink);
    if (r == AVERROR_EOF && !s->palette_pushed && s->nb_refs && s->stats_mode != STATS_MODE_SINGLE_FRAMES) {
        r = FUNC0(outlink, FUNC2(ctx));
        s->palette_pushed = 1;
        return r;
    }
    return r;
}