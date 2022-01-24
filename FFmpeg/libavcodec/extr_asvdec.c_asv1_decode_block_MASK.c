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
typedef  int int16_t ;
struct TYPE_7__ {int /*<<< orphan*/  table; } ;
struct TYPE_5__ {size_t* permutated; } ;
struct TYPE_6__ {int* intra_matrix; int /*<<< orphan*/  gb; TYPE_1__ scantable; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_2__ ASV1Context ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  VLC_BITS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ ccp_vlc ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC4(ASV1Context *a, int16_t block[64])
{
    int i;

    block[0] = 8 * FUNC2(&a->gb, 8);

    for (i = 0; i < 11; i++) {
        const int ccp = FUNC3(&a->gb, ccp_vlc.table, VLC_BITS, 1);

        if (ccp) {
            if (ccp == 16)
                break;
            if (ccp < 0 || i >= 10) {
                FUNC1(a->avctx, AV_LOG_ERROR, "coded coeff pattern damaged\n");
                return AVERROR_INVALIDDATA;
            }

            if (ccp & 8)
                block[a->scantable.permutated[4 * i + 0]] = (FUNC0(&a->gb) * a->intra_matrix[4 * i + 0]) >> 4;
            if (ccp & 4)
                block[a->scantable.permutated[4 * i + 1]] = (FUNC0(&a->gb) * a->intra_matrix[4 * i + 1]) >> 4;
            if (ccp & 2)
                block[a->scantable.permutated[4 * i + 2]] = (FUNC0(&a->gb) * a->intra_matrix[4 * i + 2]) >> 4;
            if (ccp & 1)
                block[a->scantable.permutated[4 * i + 3]] = (FUNC0(&a->gb) * a->intra_matrix[4 * i + 3]) >> 4;
        }
    }

    return 0;
}