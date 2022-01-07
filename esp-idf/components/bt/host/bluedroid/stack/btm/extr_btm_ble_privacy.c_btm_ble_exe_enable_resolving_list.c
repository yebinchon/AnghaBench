
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* supports_ble_privacy ) () ;} ;


 int TRUE ;
 int btm_ble_suspend_resolving_list_activity () ;
 int btm_ble_vendor_enable_irk_feature (int ) ;
 int btsnd_hcic_ble_set_addr_resolution_enable (int ) ;
 TYPE_1__* controller_get_interface () ;
 int stub1 () ;

void btm_ble_exe_enable_resolving_list(void)
{
    if (!btm_ble_suspend_resolving_list_activity()) {
        return;
    }

    if (!controller_get_interface()->supports_ble_privacy()) {
        btm_ble_vendor_enable_irk_feature(TRUE);
    } else {
        btsnd_hcic_ble_set_addr_resolution_enable(TRUE);
    }
}
