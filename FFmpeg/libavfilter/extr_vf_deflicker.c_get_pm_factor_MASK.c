#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int size; float* luminance; } ;
typedef  TYPE_1__ DeflickerContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 float FUNC0 (float,float) ; 

__attribute__((used)) static void FUNC1(AVFilterContext *ctx, float *f)
{
    DeflickerContext *s = ctx->priv;
    int y;

    *f = 0.0f;

    for (y = 0; y < s->size; y++) {
        *f += FUNC0(s->luminance[y], s->size);
    }

    *f /= s->size;
    *f  = FUNC0(*f, 1.0f / s->size);
    *f /= s->luminance[0];
}