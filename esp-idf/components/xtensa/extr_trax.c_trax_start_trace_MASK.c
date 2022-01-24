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
typedef  scalar_t__ trax_downcount_unit_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERI_TRAX_DELAYCNT ; 
 int /*<<< orphan*/  ERI_TRAX_PCMATCHCTRL ; 
 int /*<<< orphan*/  ERI_TRAX_TRAXCTRL ; 
 int /*<<< orphan*/  ERI_TRAX_TRAXSTAT ; 
 int ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int TRAXCTRL_CNTU ; 
 int TRAXCTRL_PTOWS ; 
 int TRAXCTRL_SMPER_SHIFT ; 
 int TRAXCTRL_TMEN ; 
 int TRAXCTRL_TREN ; 
 int TRAXCTRL_TRSTP ; 
 int TRAXSTAT_TRACT ; 
 scalar_t__ TRAX_DOWNCOUNT_INSTRUCTIONS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(trax_downcount_unit_t units_until_stop) 
{
#if !CONFIG_ESP32_TRAX
    FUNC0(TAG, "Trax_start_trace called, but trax is disabled in menuconfig!");
    return ESP_ERR_NO_MEM;
#endif
    uint32_t v;
    if (FUNC2(ERI_TRAX_TRAXSTAT)&TRAXSTAT_TRACT) {
        FUNC1(TAG, "Stopping active trace first.");
        //Trace is active. Stop trace.
        FUNC3(ERI_TRAX_DELAYCNT, 0);
        FUNC3(ERI_TRAX_TRAXCTRL, FUNC2(ERI_TRAX_TRAXCTRL)|TRAXCTRL_TRSTP);
        //ToDo: This will probably trigger a trace done interrupt. ToDo: Fix, but how? -JD
        FUNC3(ERI_TRAX_TRAXCTRL, 0);
    }
    FUNC3(ERI_TRAX_PCMATCHCTRL, 31); //do not stop at any pc match
    v=TRAXCTRL_TREN | TRAXCTRL_TMEN | TRAXCTRL_PTOWS | (1<<TRAXCTRL_SMPER_SHIFT);
    if (units_until_stop == TRAX_DOWNCOUNT_INSTRUCTIONS) v|=TRAXCTRL_CNTU;
    //Enable trace. This trace has no stop condition and will just keep on running.
    FUNC3(ERI_TRAX_TRAXCTRL, v);
    return ESP_OK;
}