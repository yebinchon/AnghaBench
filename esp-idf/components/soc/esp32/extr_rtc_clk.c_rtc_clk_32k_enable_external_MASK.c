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
 int /*<<< orphan*/  XTAL_32K_EXT_DAC_VAL ; 
 int /*<<< orphan*/  XTAL_32K_EXT_DBIAS_VAL ; 
 int /*<<< orphan*/  XTAL_32K_EXT_DRES_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
    FUNC0(XTAL_32K_EXT_DAC_VAL, XTAL_32K_EXT_DRES_VAL, XTAL_32K_EXT_DBIAS_VAL);
}