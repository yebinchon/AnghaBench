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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  SENS_SAR1_CLK_DIV ; 
 int /*<<< orphan*/  SENS_SAR1_CLK_DIV_S ; 
 int /*<<< orphan*/  SENS_SAR2_CLK_DIV ; 
 int /*<<< orphan*/  SENS_SAR2_CLK_DIV_S ; 
 int /*<<< orphan*/  SENS_SAR_READ_CTRL2_REG ; 
 int /*<<< orphan*/  SENS_SAR_READ_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ __analogClockDiv ; 

void FUNC1(uint8_t clockDiv){
    if(!clockDiv){
        return;
    }
    __analogClockDiv = clockDiv;
    FUNC0(SENS_SAR_READ_CTRL_REG, SENS_SAR1_CLK_DIV, __analogClockDiv, SENS_SAR1_CLK_DIV_S);
    FUNC0(SENS_SAR_READ_CTRL2_REG, SENS_SAR2_CLK_DIV, __analogClockDiv, SENS_SAR2_CLK_DIV_S);
}