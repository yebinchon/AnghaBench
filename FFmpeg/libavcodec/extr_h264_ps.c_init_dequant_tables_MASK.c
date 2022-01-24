#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int*** dequant8_coeff; int*** dequant4_coeff; scalar_t__ transform_8x8_mode; } ;
struct TYPE_9__ {scalar_t__ transform_bypass; } ;
typedef  TYPE_1__ SPS ;
typedef  TYPE_2__ PPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int***,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(PPS *pps, const SPS *sps)
{
    int i, x;
    FUNC0(pps, sps);
    FUNC2(pps->dequant8_coeff, 0, sizeof(pps->dequant8_coeff));

    if (pps->transform_8x8_mode)
        FUNC1(pps, sps);
    if (sps->transform_bypass) {
        for (i = 0; i < 6; i++)
            for (x = 0; x < 16; x++)
                pps->dequant4_coeff[i][0][x] = 1 << 6;
        if (pps->transform_8x8_mode)
            for (i = 0; i < 6; i++)
                for (x = 0; x < 64; x++)
                    pps->dequant8_coeff[i][0][x] = 1 << 6;
    }
}