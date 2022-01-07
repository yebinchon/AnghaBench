
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int int_state; } ;


 int esp_apptrace_lock_give (TYPE_1__*) ;
 TYPE_1__ s_sys_view_lock ;

void SEGGER_SYSVIEW_X_SysView_Unlock(unsigned int_state)
{
    s_sys_view_lock.int_state = int_state;
    esp_apptrace_lock_give(&s_sys_view_lock);
}
