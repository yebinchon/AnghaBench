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
typedef  scalar_t__ int64_t ;
struct TYPE_13__ {TYPE_1__* src; } ;
struct TYPE_12__ {scalar_t__ pts; double sample_rate; scalar_t__* extended_data; } ;
struct TYPE_11__ {scalar_t__ n; double sample_rate; scalar_t__ duration; int nb_samples; scalar_t__ pts; scalar_t__* var_values; int nb_channels; int /*<<< orphan*/ * expr; } ;
struct TYPE_10__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ EvalContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 double AV_TIME_BASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,scalar_t__) ; 
 size_t VAR_N ; 
 size_t VAR_T ; 
 double FUNC2 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,double,double) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *outlink)
{
    EvalContext *eval = outlink->src->priv;
    AVFrame *samplesref;
    int i, j;
    int64_t t = FUNC3(eval->n, AV_TIME_BASE, eval->sample_rate);
    int nb_samples;

    if (eval->duration >= 0 && t >= eval->duration)
        return AVERROR_EOF;

    if (eval->duration >= 0) {
        nb_samples = FUNC1(eval->nb_samples, FUNC3(eval->duration, eval->sample_rate, AV_TIME_BASE) - eval->pts);
        if (!nb_samples)
            return AVERROR_EOF;
    } else {
        nb_samples = eval->nb_samples;
    }
    samplesref = FUNC5(outlink, nb_samples);
    if (!samplesref)
        return FUNC0(ENOMEM);

    /* evaluate expression for each single sample and for each channel */
    for (i = 0; i < nb_samples; i++, eval->n++) {
        eval->var_values[VAR_N] = eval->n;
        eval->var_values[VAR_T] = eval->var_values[VAR_N] * (double)1/eval->sample_rate;

        for (j = 0; j < eval->nb_channels; j++) {
            *((double *) samplesref->extended_data[j] + i) =
                FUNC2(eval->expr[j], eval->var_values, NULL);
        }
    }

    samplesref->pts = eval->pts;
    samplesref->sample_rate = eval->sample_rate;
    eval->pts += nb_samples;

    return FUNC4(outlink, samplesref);
}