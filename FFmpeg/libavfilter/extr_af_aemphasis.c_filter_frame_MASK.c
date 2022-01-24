#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_19__ {int channels; TYPE_5__* dst; } ;
struct TYPE_18__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_17__ {double level_out; double level_in; TYPE_1__* rc; } ;
struct TYPE_16__ {int /*<<< orphan*/  brickw; scalar_t__ use_brickw; int /*<<< orphan*/  r1; } ;
typedef  TYPE_2__ AudioEmphasisContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 double const FUNC4 (int /*<<< orphan*/ *,double const) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioEmphasisContext *s = ctx->priv;
    const double *src = (const double *)in->data[0];
    const double level_out = s->level_out;
    const double level_in = s->level_in;
    AVFrame *out;
    double *dst;
    int n, c;

    if (FUNC3(in)) {
        out = in;
    } else {
        out = FUNC6(outlink, in->nb_samples);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }
    dst = (double *)out->data[0];

    for (n = 0; n < in->nb_samples; n++) {
        for (c = 0; c < inlink->channels; c++)
            dst[c] = level_out * FUNC4(&s->rc[c].r1, s->rc[c].use_brickw ? FUNC4(&s->rc[c].brickw, src[c] * level_in) : src[c] * level_in);
        dst += inlink->channels;
        src += inlink->channels;
    }

    if (in != out)
        FUNC2(&in);
    return FUNC5(outlink, out);
}