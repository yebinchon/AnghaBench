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
struct TYPE_3__ {int mclms_order; int mclms_scaling; int num_channels; int* mclms_coeffs; int* mclms_coeffs_cur; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ WmallDecodeCtx ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(WmallDecodeCtx *s)
{
    s->mclms_order   = (FUNC1(&s->gb, 4) + 1) * 2;
    s->mclms_scaling = FUNC1(&s->gb, 4);
    if (FUNC2(&s->gb)) {
        int i, send_coef_bits;
        int cbits = FUNC0(s->mclms_scaling + 1);
        if (1 << cbits < s->mclms_scaling + 1)
            cbits++;

        send_coef_bits = FUNC3(&s->gb, cbits) + 2;

        for (i = 0; i < s->mclms_order * s->num_channels * s->num_channels; i++)
            s->mclms_coeffs[i] = FUNC1(&s->gb, send_coef_bits);

        for (i = 0; i < s->num_channels; i++) {
            int c;
            for (c = 0; c < i; c++)
                s->mclms_coeffs_cur[i * s->num_channels + c] = FUNC1(&s->gb, send_coef_bits);
        }
    }
}