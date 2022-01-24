#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_18__ {TYPE_5__* dst; } ;
struct TYPE_17__ {int nb_samples; int /*<<< orphan*/  channels; scalar_t__ extended_data; } ;
struct TYPE_16__ {int /*<<< orphan*/  clip; int /*<<< orphan*/  mult; TYPE_1__* prev; int /*<<< orphan*/  (* filter ) (void**,void**,void const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {scalar_t__ extended_data; } ;
typedef  TYPE_2__ CrystalizerContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 void* FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,void**,void const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    CrystalizerContext *s = ctx->priv;
    AVFrame *out;

    if (!s->prev) {
        s->prev = FUNC5(inlink, 1);
        if (!s->prev) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
    }

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

    s->filter((void **)out->extended_data, (void **)s->prev->extended_data, (const void **)in->extended_data,
              in->nb_samples, in->channels, s->mult, s->clip);

    if (out != in)
        FUNC2(&in);

    return FUNC4(outlink, out);
}