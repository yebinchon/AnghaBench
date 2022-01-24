#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; TYPE_3__* dst; } ;
struct TYPE_5__ {int transients; int detector; int phase; int window; int smoothing; int formant; int opitch; int channels; int tempo; int /*<<< orphan*/  first_pts; scalar_t__ rbs; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  pitch; } ;
typedef  TYPE_1__ RubberBandContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int RubberBandOptionProcessRealTime ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    RubberBandContext *s = ctx->priv;
    int opts = s->transients|s->detector|s->phase|s->window|
               s->smoothing|s->formant|s->opitch|s->channels|
               RubberBandOptionProcessRealTime;

    if (s->rbs)
        FUNC1(s->rbs);
    s->rbs = FUNC3(inlink->sample_rate, inlink->channels, opts, 1. / s->tempo, s->pitch);
    if (!s->rbs)
        return FUNC0(ENOMEM);

    s->nb_samples = FUNC2(s->rbs);
    s->first_pts = AV_NOPTS_VALUE;

    return 0;
}