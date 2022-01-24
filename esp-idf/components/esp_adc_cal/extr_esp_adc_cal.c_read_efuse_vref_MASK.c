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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_ADC_VREF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VREF_FORMAT ; 
 int /*<<< orphan*/  VREF_MASK ; 
 int VREF_OFFSET ; 
 int /*<<< orphan*/  VREF_REG ; 
 int VREF_STEP_SIZE ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC2(void)
{
    //eFuse stores deviation from ideal reference voltage
    uint32_t ret = VREF_OFFSET;       //Ideal vref
    uint32_t bits = FUNC0(VREF_REG, EFUSE_ADC_VREF);
    ret += FUNC1(bits, VREF_MASK, VREF_FORMAT) * VREF_STEP_SIZE;
    return ret;     //ADC Vref in mV
}