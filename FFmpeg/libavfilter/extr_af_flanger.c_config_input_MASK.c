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
struct TYPE_6__ {double sample_rate; int channels; int /*<<< orphan*/  format; TYPE_3__* dst; } ;
struct TYPE_5__ {double max_samples; double delay_min; double delay_depth; int lfo_length; int speed; int /*<<< orphan*/  delay_buffer; void* lfo; int /*<<< orphan*/  wave_shape; void* delay_last; } ;
typedef  TYPE_1__ FlangerContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int M_PI_2 ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FlangerContext *s = ctx->priv;

    s->max_samples = (s->delay_min + s->delay_depth) * inlink->sample_rate + 2.5;
    s->lfo_length  = inlink->sample_rate / s->speed;
    s->delay_last  = FUNC1(inlink->channels, sizeof(*s->delay_last));
    s->lfo         = FUNC1(s->lfo_length, sizeof(*s->lfo));
    if (!s->lfo || !s->delay_last)
        return FUNC0(ENOMEM);

    FUNC3(s->wave_shape, AV_SAMPLE_FMT_FLT, s->lfo, s->lfo_length,
                           FUNC4(s->delay_min * inlink->sample_rate),
                           s->max_samples - 2., 3 * M_PI_2);

    return FUNC2(&s->delay_buffer, NULL,
                                              inlink->channels, s->max_samples,
                                              inlink->format, 0);
}