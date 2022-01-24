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
typedef  int /*<<< orphan*/  CoefType ;
typedef  int CoefSumType ;

/* Variables and functions */
 int /*<<< orphan*/  COEF_MAX ; 
 int /*<<< orphan*/  FUNC0 (float,int /*<<< orphan*/ ) ; 
 float FUNC1 (int) ; 

__attribute__((used)) static CoefType FUNC2(CoefSumType energy_ch, CoefSumType energy_cpl)
{
    float coord = 0.125;
    if (energy_cpl > 0)
        coord *= FUNC1(energy_ch / energy_cpl);
    return FUNC0(coord, COEF_MAX);
}