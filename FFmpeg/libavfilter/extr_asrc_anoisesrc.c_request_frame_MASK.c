#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int duration; int nb_samples; int amplitude; double (* filter ) (double,int /*<<< orphan*/ ) ;int pts; int /*<<< orphan*/  infinite; int /*<<< orphan*/  buf; int /*<<< orphan*/  c; } ;
struct TYPE_12__ {TYPE_4__* priv; } ;
struct TYPE_11__ {TYPE_3__* src; } ;
struct TYPE_10__ {int pts; scalar_t__* data; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  TYPE_4__ ANoiseSrcContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int) ; 
 double FUNC4 (double,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ANoiseSrcContext *s = ctx->priv;
    AVFrame *frame;
    int nb_samples, i;
    double *dst;

    if (!s->infinite && s->duration <= 0) {
        return AVERROR_EOF;
    } else if (!s->infinite && s->duration < s->nb_samples) {
        nb_samples = s->duration;
    } else {
        nb_samples = s->nb_samples;
    }

    if (!(frame = FUNC3(outlink, nb_samples)))
        return FUNC0(ENOMEM);

    dst = (double *)frame->data[0];
    for (i = 0; i < nb_samples; i++) {
        double white;
        white = s->amplitude * ((2 * ((double) FUNC1(&s->c) / 0xffffffff)) - 1);
        dst[i] = s->filter(white, s->buf);
    }

    if (!s->infinite)
        s->duration -= nb_samples;

    frame->pts = s->pts;
    s->pts    += nb_samples;
    return FUNC2(outlink, frame);
}