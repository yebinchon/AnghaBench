#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_1__* prev; int /*<<< orphan*/  (* filter ) (void**,void**,void const**,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_3__** outputs; TYPE_5__* priv; } ;
struct TYPE_16__ {TYPE_4__* dst; } ;
struct TYPE_15__ {int nb_samples; int /*<<< orphan*/  channels; scalar_t__ extended_data; } ;
struct TYPE_14__ {scalar_t__ extended_data; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  TYPE_5__ ADerivativeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 void* FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (void**,void**,void const**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    ADerivativeContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = FUNC4(outlink, in->nb_samples);

    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);

    if (!s->prev) {
        s->prev = FUNC4(inlink, 1);
        if (!s->prev) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
    }

    s->filter((void **)out->extended_data, (void **)s->prev->extended_data, (const void **)in->extended_data,
              in->nb_samples, in->channels);

    FUNC2(&in);
    return FUNC3(outlink, out);
}