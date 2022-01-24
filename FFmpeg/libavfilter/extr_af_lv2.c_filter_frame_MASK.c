#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {TYPE_4__* dst; } ;
struct TYPE_17__ {int /*<<< orphan*/  nb_samples; } ;
struct TYPE_16__ {scalar_t__ nb_outputs; scalar_t__ nb_inputs; int /*<<< orphan*/  instance; } ;
typedef  TYPE_1__ LV2Context ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    LV2Context *s = ctx->priv;
    AVFrame *out;

    if (!s->nb_outputs ||
        (FUNC3(in) && s->nb_inputs == s->nb_outputs)) {
        out = in;
    } else {
        out = FUNC6(ctx->outputs[0], in->nb_samples);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }

    FUNC4(s, in, out);

    FUNC7(s->instance, in->nb_samples);

    if (out != in)
        FUNC2(&in);

    return FUNC5(ctx->outputs[0], out);
}