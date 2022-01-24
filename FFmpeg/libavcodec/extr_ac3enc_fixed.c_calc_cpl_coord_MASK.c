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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int CoefType ;
typedef  int CoefSumType ;

/* Variables and functions */
 int COEF_MAX ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static CoefType FUNC2(CoefSumType energy_ch, CoefSumType energy_cpl)
{
    if (energy_cpl <= COEF_MAX) {
        return 1048576;
    } else {
        uint64_t coord   = energy_ch / (energy_cpl >> 24);
        uint32_t coord32 = FUNC0(coord, 1073741824);
        coord32          = FUNC1(coord32) << 9;
        return FUNC0(coord32, COEF_MAX);
    }
}