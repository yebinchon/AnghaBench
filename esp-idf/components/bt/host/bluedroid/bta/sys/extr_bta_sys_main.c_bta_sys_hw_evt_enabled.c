
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw_module; } ;
typedef TYPE_1__ tBTA_SYS_HW_MSG ;


 int APPL_TRACE_EVENT (char*,int ) ;
 int BTM_DeviceReset (int *) ;

void bta_sys_hw_evt_enabled(tBTA_SYS_HW_MSG *p_sys_hw_msg)
{
    APPL_TRACE_EVENT("bta_sys_hw_evt_enabled for %i\n", p_sys_hw_msg->hw_module);
    BTM_DeviceReset( ((void*)0) );
}
