#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* src; } ;
struct TYPE_6__ {int kernel_size; void* tmp; void* offset; void* coeffs; void* delay; int /*<<< orphan*/  order; } ;
typedef  TYPE_1__ AudioNLMSContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioNLMSContext *s = ctx->priv;

    s->kernel_size = FUNC1(s->order, 16);

    if (!s->offset)
        s->offset = FUNC2(outlink, 1);
    if (!s->delay)
        s->delay = FUNC2(outlink, 2 * s->kernel_size);
    if (!s->coeffs)
        s->coeffs = FUNC2(outlink, 2 * s->kernel_size);
    if (!s->tmp)
        s->tmp = FUNC2(outlink, s->kernel_size);
    if (!s->delay || !s->coeffs || !s->offset || !s->tmp)
        return FUNC0(ENOMEM);

    return 0;
}