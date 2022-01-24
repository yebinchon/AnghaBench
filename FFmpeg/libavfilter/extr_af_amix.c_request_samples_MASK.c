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
struct TYPE_5__ {int /*<<< orphan*/ * outputs; int /*<<< orphan*/ * inputs; TYPE_1__* priv; } ;
struct TYPE_4__ {int nb_inputs; int* input_state; int /*<<< orphan*/ * fifos; } ;
typedef  TYPE_1__ MixContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int INPUT_EOF ; 
 int INPUT_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, int min_samples)
{
    MixContext *s = ctx->priv;
    int i;

    FUNC0(s->nb_inputs > 1);

    for (i = 1; i < s->nb_inputs; i++) {
        if (!(s->input_state[i] & INPUT_ON) ||
             (s->input_state[i] & INPUT_EOF))
            continue;
        if (FUNC1(s->fifos[i]) >= min_samples)
            continue;
        FUNC2(ctx->inputs[i]);
    }
    return FUNC3(ctx->outputs[0]);
}