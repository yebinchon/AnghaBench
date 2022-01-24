#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* src; } ;
struct TYPE_5__ {scalar_t__ nb_next; scalar_t__ prev; scalar_t__ cur; scalar_t__ next; } ;
typedef  TYPE_1__ FFTdnoizContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    FFTdnoizContext *s = ctx->priv;
    int ret = 0;

    ret = FUNC2(ctx->inputs[0]);

    if (ret == AVERROR_EOF && (s->nb_next > 0)) {
        AVFrame *buf;

        if (s->next && s->nb_next > 0)
            buf = FUNC1(s->next);
        else if (s->cur)
            buf = FUNC1(s->cur);
        else
            buf = FUNC1(s->prev);
        if (!buf)
            return FUNC0(ENOMEM);

        ret = FUNC3(ctx->inputs[0], buf);
        if (ret < 0)
            return ret;
        ret = AVERROR_EOF;
    }

    return ret;
}