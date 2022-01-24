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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int nsubbands; scalar_t__ min_mono_subband; int /*<<< orphan*/  gb; int /*<<< orphan*/ *** grid_2_scf; } ;
typedef  TYPE_1__ DCALbrDecoder ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__* ff_dca_grid_2_to_scf ; 
 int* ff_dca_scf_to_grid_2 ; 
 int /*<<< orphan*/  ff_dca_vlc_grid_2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(DCALbrDecoder *s, int ch1, int ch2,
                        int start_sb, int end_sb, int flag)
{
    int i, j, sb, ch, nsubbands;

    nsubbands = ff_dca_scf_to_grid_2[s->nsubbands - 1] + 1;
    if (end_sb > nsubbands)
        end_sb = nsubbands;

    for (sb = start_sb; sb < end_sb; sb++) {
        for (ch = ch1; ch <= ch2; ch++) {
            uint8_t *g2_scf = s->grid_2_scf[ch][sb];

            if ((ch != ch1 && ff_dca_grid_2_to_scf[sb] >= s->min_mono_subband) != flag) {
                if (!flag)
                    FUNC3(g2_scf, s->grid_2_scf[ch1][sb], 64);
                continue;
            }

            // Scale factors in groups of 8
            for (i = 0; i < 8; i++, g2_scf += 8) {
                if (FUNC2(&s->gb) < 1) {
                    FUNC4(g2_scf, 0, 64 - i * 8);
                    break;
                }
                // Bit indicating if whole group has zero values
                if (FUNC1(&s->gb)) {
                    for (j = 0; j < 8; j++) {
                        if (FUNC0(&s->gb, 20))
                            break;
                        g2_scf[j] = FUNC5(&s->gb, &ff_dca_vlc_grid_2, 2);
                    }
                } else {
                    FUNC4(g2_scf, 0, 8);
                }
            }
        }
    }

    return 0;
}