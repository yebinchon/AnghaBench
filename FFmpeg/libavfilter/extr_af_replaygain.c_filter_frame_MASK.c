#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int64_t ;
struct TYPE_17__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_16__ {TYPE_4__* dst; } ;
struct TYPE_15__ {int /*<<< orphan*/  nb_samples; scalar_t__* data; } ;
struct TYPE_14__ {int /*<<< orphan*/ * histogram; int /*<<< orphan*/  peak; } ;
typedef  TYPE_1__ ReplayGainContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ HISTOGRAM_SLOTS ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (float*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,float const*,float*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ReplayGainContext *s = ctx->priv;
    int64_t level;
    AVFrame *out;

    out = FUNC7(outlink, in->nb_samples);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }

    FUNC4((float *)in->data[0],
                              in->nb_samples, &s->peak);
    FUNC10(s, (const float *)in->data[0],
                                        (float *)out->data[0],
                                                 out->nb_samples);
    FUNC3(s, (float *)out->data[0],
                                             out->nb_samples);
    level = FUNC9(FUNC8(100 * FUNC5((float *)out->data[0],
                                                           out->nb_samples)));
    level = FUNC1(level, 0, HISTOGRAM_SLOTS - 1);

    s->histogram[level]++;

    FUNC2(&out);
    return FUNC6(outlink, in);
}