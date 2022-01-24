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
struct TYPE_3__ {int framenum; int /*<<< orphan*/ **** lpc_coeff; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCALbrDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(DCALbrDecoder *s, int ch1, int ch2, int start_sb, int end_sb)
{
    int f = s->framenum & 1;
    int i, sb, ch, codes[16];

    // First two subbands have two sets of coefficients, third subband has one
    for (sb = start_sb; sb < end_sb; sb++) {
        int ncodes = 8 * (1 + (sb < 2));
        for (ch = ch1; ch <= ch2; ch++) {
            if (FUNC1(&s->gb, 4 * ncodes))
                return 0;
            for (i = 0; i < ncodes; i++)
                codes[i] = FUNC2(&s->gb, 4);
            for (i = 0; i < ncodes / 8; i++)
                FUNC0(s->lpc_coeff[f][ch][sb][i], &codes[i * 8]);
        }
    }

    return 0;
}