#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float* lfe_data; float lfe_scale; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ DCALbrDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (float*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__* ff_dca_lfe_delta_index_24 ; 
 float* ff_dca_lfe_step_size_24 ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(DCALbrDecoder *s)
{
    int step_max = FUNC0(ff_dca_lfe_step_size_24) - 1;
    int i, ps, si, code, step_i;
    float step, value, delta;

    ps = FUNC3(&s->gb, 24);
    si = ps >> 23;

    value = (((ps & 0x7fffff) ^ -si) + si) * (1.0f / 0x7fffff);

    step_i = FUNC3(&s->gb, 8);
    if (step_i > step_max) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Invalid LFE step size index\n");
        return -1;
    }

    step = ff_dca_lfe_step_size_24[step_i];

    for (i = 0; i < 64; i++) {
        code = FUNC3(&s->gb, 6);

        delta = step * 0.03125f;
        if (code & 16)
            delta += step;
        if (code & 8)
            delta += step * 0.5f;
        if (code & 4)
            delta += step * 0.25f;
        if (code & 2)
            delta += step * 0.125f;
        if (code & 1)
            delta += step * 0.0625f;

        if (code & 32) {
            value -= delta;
            if (value < -3.0f)
                value = -3.0f;
        } else {
            value += delta;
            if (value > 3.0f)
                value = 3.0f;
        }

        step_i += ff_dca_lfe_delta_index_24[code & 31];
        step_i = FUNC1(step_i, 0, step_max);

        step = ff_dca_lfe_step_size_24[step_i];
        s->lfe_data[i] = value * s->lfe_scale;
    }

    return 0;
}