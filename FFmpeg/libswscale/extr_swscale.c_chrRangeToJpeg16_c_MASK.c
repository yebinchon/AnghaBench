#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(int16_t *_dstU, int16_t *_dstV, int width)
{
    int i;
    int32_t *dstU = (int32_t *) _dstU;
    int32_t *dstV = (int32_t *) _dstV;
    for (i = 0; i < width; i++) {
        dstU[i] = (FUNC0(dstU[i], 30775 << 4) * 4663 - (9289992 << 4)) >> 12; // -264
        dstV[i] = (FUNC0(dstV[i], 30775 << 4) * 4663 - (9289992 << 4)) >> 12; // -264
    }
}