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
 int /*<<< orphan*/  ERI_TRAX_DELAYCNT ; 
 int /*<<< orphan*/  ERI_TRAX_TRAXCTRL ; 
 int ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int TRAXCTRL_TRSTP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(int delay) 
{
#if !CONFIG_ESP32_TRAX
    FUNC0(TAG, "Trax_trigger_traceend_after_delay called, but trax is disabled in menuconfig!");
    return ESP_ERR_NO_MEM;
#endif
    FUNC2(ERI_TRAX_DELAYCNT, delay);
    FUNC2(ERI_TRAX_TRAXCTRL, FUNC1(ERI_TRAX_TRAXCTRL)|TRAXCTRL_TRSTP);
    return ESP_OK;
}