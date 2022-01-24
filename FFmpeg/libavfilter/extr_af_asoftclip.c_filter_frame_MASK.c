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
struct TYPE_19__ {int /*<<< orphan*/  (* filter ) (TYPE_4__*,void**,void const**,int,int) ;} ;
struct TYPE_18__ {TYPE_4__* priv; TYPE_2__** outputs; } ;
struct TYPE_17__ {TYPE_3__* dst; } ;
struct TYPE_16__ {int nb_samples; int channels; scalar_t__ extended_data; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  TYPE_4__ ASoftClipContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,void**,void const**,int,int) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ASoftClipContext *s = ctx->priv;
    int nb_samples, channels;
    AVFrame *out;

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

    if (FUNC4(in->format)) {
        nb_samples = in->nb_samples;
        channels = in->channels;
    } else {
        nb_samples = in->channels * in->nb_samples;
        channels = 1;
    }

    s->filter(s, (void **)out->extended_data, (const void **)in->extended_data,
              nb_samples, channels);

    if (out != in)
        FUNC2(&in);

    return FUNC5(outlink, out);
}