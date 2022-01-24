#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_17__ {TYPE_4__* dst; } ;
struct TYPE_16__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  nb_samples; scalar_t__ extended_data; } ;
struct TYPE_15__ {int contrast; int /*<<< orphan*/  (* filter ) (void**,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_1__ AudioContrastContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void**,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioContrastContext *s = ctx->priv;
    AVFrame *out;

    if (FUNC3(in)) {
        out = in;
    } else {
        out = FUNC5(outlink, in->nb_samples);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }

    s->filter((void **)out->extended_data, (const void **)in->extended_data,
              in->nb_samples, in->channels, s->contrast / 750);

    if (out != in)
        FUNC2(&in);

    return FUNC4(outlink, out);
}