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

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_RD_ADC_VREF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VREF_REG ; 

__attribute__((used)) static bool FUNC1(void)
{
    //Check if Vref is burned in eFuse
    return (FUNC0(VREF_REG, EFUSE_RD_ADC_VREF) != 0) ? true : false;
}