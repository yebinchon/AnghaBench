#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_4__ {int* q_intra_matrix; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ ASV1Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ ** ff_asv_ac_ccp_tab ; 
 int /*<<< orphan*/ ** ff_asv_dc_ccp_tab ; 
 int* ff_asv_scantab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(ASV1Context *a, int16_t block[64])
{
    int i;
    int count = 0;

    for (count = 63; count > 3; count--) {
        const int index = ff_asv_scantab[count];
        if ((block[index] * a->q_intra_matrix[index] + (1 << 15)) >> 16)
            break;
    }

    count >>= 2;

    FUNC0(&a->pb, 4, count);
    FUNC0(&a->pb, 8, (block[0] + 32) >> 6);
    block[0] = 0;

    for (i = 0; i <= count; i++) {
        const int index = ff_asv_scantab[4 * i];
        int ccp         = 0;

        if ((block[index + 0] = (block[index + 0] *
                                 a->q_intra_matrix[index + 0] + (1 << 15)) >> 16))
            ccp |= 8;
        if ((block[index + 8] = (block[index + 8] *
                                 a->q_intra_matrix[index + 8] + (1 << 15)) >> 16))
            ccp |= 4;
        if ((block[index + 1] = (block[index + 1] *
                                 a->q_intra_matrix[index + 1] + (1 << 15)) >> 16))
            ccp |= 2;
        if ((block[index + 9] = (block[index + 9] *
                                 a->q_intra_matrix[index + 9] + (1 << 15)) >> 16))
            ccp |= 1;

        FUNC2(i || ccp < 8);
        if (i)
            FUNC3(&a->pb, ff_asv_ac_ccp_tab[ccp][1], ff_asv_ac_ccp_tab[ccp][0]);
        else
            FUNC3(&a->pb, ff_asv_dc_ccp_tab[ccp][1], ff_asv_dc_ccp_tab[ccp][0]);

        if (ccp) {
            if (ccp & 8)
                FUNC1(a, &a->pb, block[index + 0]);
            if (ccp & 4)
                FUNC1(a, &a->pb, block[index + 8]);
            if (ccp & 2)
                FUNC1(a, &a->pb, block[index + 1]);
            if (ccp & 1)
                FUNC1(a, &a->pb, block[index + 9]);
        }
    }
}