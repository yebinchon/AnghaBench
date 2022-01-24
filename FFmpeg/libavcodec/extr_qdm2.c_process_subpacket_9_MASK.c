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
struct TYPE_8__ {size_t coeff_per_sb_select; int nb_channels; int*** quantized_coeffs; int /*<<< orphan*/  sub_sampling; } ;
struct TYPE_7__ {TYPE_1__* packet; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ QDM2SubPNode ;
typedef  TYPE_3__ QDM2Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int** coeff_per_sb_for_avg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vlc_tab_diff ; 
 int /*<<< orphan*/  vlc_tab_level ; 
 int /*<<< orphan*/  vlc_tab_run ; 

__attribute__((used)) static int FUNC4(QDM2Context *q, QDM2SubPNode *node)
{
    GetBitContext gb;
    int i, j, k, n, ch, run, level, diff;

    FUNC1(&gb, node->packet->data, node->packet->size * 8);

    n = coeff_per_sb_for_avg[q->coeff_per_sb_select][FUNC0(q->sub_sampling) - 1] + 1;

    for (i = 1; i < n; i++)
        for (ch = 0; ch < q->nb_channels; ch++) {
            level = FUNC3(&gb, &vlc_tab_level, 0, 2);
            q->quantized_coeffs[ch][i][0] = level;

            for (j = 0; j < (8 - 1); ) {
                run  = FUNC3(&gb, &vlc_tab_run, 0, 1) + 1;
                diff = FUNC2(&vlc_tab_diff, &gb, 2);

                if (j + run >= 8)
                    return -1;

                for (k = 1; k <= run; k++)
                    q->quantized_coeffs[ch][i][j + k] = (level + ((k * diff) / run));

                level += diff;
                j     += run;
            }
        }

    for (ch = 0; ch < q->nb_channels; ch++)
        for (i = 0; i < 8; i++)
            q->quantized_coeffs[ch][0][i] = 0;

    return 0;
}