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
struct TYPE_6__ {int sample_rate; TYPE_3__* dst; } ;
struct TYPE_5__ {int strength; int range; double a0; int a1; double a2; double b0; int b1; double b2; } ;
typedef  TYPE_1__ CrossfeedContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int M_PI ; 
 double FUNC0 (double) ; 
 double FUNC1 (int) ; 
 int FUNC2 (double) ; 
 int FUNC3 (double) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    CrossfeedContext *s = ctx->priv;
    double A = FUNC1(s->strength * -30 / 40);
    double w0 = 2 * M_PI * (1. - s->range) * 2100 / inlink->sample_rate;
    double alpha;

    alpha = FUNC2(w0) / 2 * FUNC3(2 * (1 / 0.5 - 1) + 2);

    s->a0 =          (A + 1) + (A - 1) * FUNC0(w0) + 2 * FUNC3(A) * alpha;
    s->a1 =    -2 * ((A - 1) + (A + 1) * FUNC0(w0));
    s->a2 =          (A + 1) + (A - 1) * FUNC0(w0) - 2 * FUNC3(A) * alpha;
    s->b0 =     A * ((A + 1) - (A - 1) * FUNC0(w0) + 2 * FUNC3(A) * alpha);
    s->b1 = 2 * A * ((A - 1) - (A + 1) * FUNC0(w0));
    s->b2 =     A * ((A + 1) - (A - 1) * FUNC0(w0) - 2 * FUNC3(A) * alpha);

    s->a1 /= s->a0;
    s->a2 /= s->a0;
    s->b0 /= s->a0;
    s->b1 /= s->a0;
    s->b2 /= s->a0;

    return 0;
}