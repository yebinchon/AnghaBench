#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* force_xpd_sar; } ;
struct TYPE_4__ {void* force_xpd_sar; } ;
struct TYPE_6__ {TYPE_2__ sar_power_xpd_sar; TYPE_1__ sar_meas_wait2; } ;

/* Variables and functions */
 TYPE_3__ SENS ; 
 void* SENS_FORCE_XPD_SAR_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

void FUNC2(void)
{
    FUNC0(&rtc_spinlock);
#if CONFIG_IDF_TARGET_ESP32
    //Bit1  0:Fsm  1: SW mode
    //Bit0  0:SW mode power down  1: SW mode power on
    SENS.sar_meas_wait2.force_xpd_sar = SENS_FORCE_XPD_SAR_PD;
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    SENS.sar_power_xpd_sar.force_xpd_sar = SENS_FORCE_XPD_SAR_PD;
#endif

    FUNC1(&rtc_spinlock);
}