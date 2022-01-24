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
 int /*<<< orphan*/  ADC1_CHANNEL_0 ; 
 int /*<<< orphan*/  ADC1_CHANNEL_3 ; 
 int /*<<< orphan*/  ADC_ATTEN_DB_0 ; 
 int /*<<< orphan*/  ADC_UNIT_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

int FUNC3(void)
{
    FUNC1(ADC_UNIT_1, ADC1_CHANNEL_0);
    FUNC1(ADC_UNIT_1, ADC1_CHANNEL_3);
    FUNC0(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);
    FUNC0(ADC1_CHANNEL_3, ADC_ATTEN_DB_0);
    return FUNC2();
}