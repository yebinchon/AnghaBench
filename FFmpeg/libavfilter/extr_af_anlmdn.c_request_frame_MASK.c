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
struct TYPE_8__ {int /*<<< orphan*/ * inputs; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* src; } ;
struct TYPE_6__ {scalar_t__ eof_left; scalar_t__ S; scalar_t__ K; int /*<<< orphan*/  H; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AudioNLMeansContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioNLMeansContext *s = ctx->priv;
    int ret;

    ret = FUNC3(ctx->inputs[0]);

    if (ret == AVERROR_EOF && s->eof_left != 0) {
        AVFrame *in;

        if (s->eof_left < 0)
            s->eof_left = FUNC1(s->fifo) - (s->S + s->K);
        if (s->eof_left <= 0)
            return AVERROR_EOF;
        in = FUNC2(outlink, s->H);
        if (!in)
            return FUNC0(ENOMEM);

        return FUNC4(ctx->inputs[0], in);
    }

    return ret;
}