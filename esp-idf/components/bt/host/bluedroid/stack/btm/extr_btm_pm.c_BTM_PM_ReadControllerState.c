
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_CONTRL_STATE ;


 int BTM_CONTRL_ACTIVE ;
 int BTM_CONTRL_IDLE ;
 int BTM_CONTRL_SCAN ;
 scalar_t__ TRUE ;
 scalar_t__ btm_pm_device_in_active_or_sniff_mode () ;
 scalar_t__ btm_pm_device_in_scan_state () ;

tBTM_CONTRL_STATE BTM_PM_ReadControllerState(void)
{
    if (TRUE == btm_pm_device_in_active_or_sniff_mode()) {
        return BTM_CONTRL_ACTIVE;
    } else if (TRUE == btm_pm_device_in_scan_state()) {
        return BTM_CONTRL_SCAN;
    } else {
        return BTM_CONTRL_IDLE;
    }
}
