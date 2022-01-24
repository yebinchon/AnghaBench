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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_13__ {int /*<<< orphan*/  swr; } ;
struct TYPE_12__ {TYPE_2__** inputs; TYPE_4__* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  sample_rate; TYPE_3__* src; } ;
struct TYPE_10__ {int nb_samples; int /*<<< orphan*/  pts; int /*<<< orphan*/  sample_rate; scalar_t__ extended_data; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  TYPE_4__ AResampleContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT64_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *outlink, int final, AVFrame **outsamplesref_ret)
{
    AVFilterContext *ctx = outlink->src;
    AResampleContext *aresample = ctx->priv;
    AVFilterLink *const inlink = outlink->src->inputs[0];
    AVFrame *outsamplesref;
    int n_out = 4096;
    int64_t pts;

    outsamplesref = FUNC3(outlink, n_out);
    *outsamplesref_ret = outsamplesref;
    if (!outsamplesref)
        return FUNC0(ENOMEM);

    pts = FUNC5(aresample->swr, INT64_MIN);
    pts = FUNC1(pts, inlink->sample_rate);

    n_out = FUNC4(aresample->swr, outsamplesref->extended_data, n_out, final ? NULL : (void*)outsamplesref->extended_data, 0);
    if (n_out <= 0) {
        FUNC2(&outsamplesref);
        return (n_out == 0) ? AVERROR_EOF : n_out;
    }

    outsamplesref->sample_rate = outlink->sample_rate;
    outsamplesref->nb_samples  = n_out;

    outsamplesref->pts = pts;

    return 0;
}