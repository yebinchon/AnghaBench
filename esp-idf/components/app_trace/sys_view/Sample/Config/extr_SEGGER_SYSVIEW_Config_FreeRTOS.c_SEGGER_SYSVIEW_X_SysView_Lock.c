
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_apptrace_tmo_t ;
struct TYPE_3__ {int int_state; } ;


 int SEGGER_LOCK_WAIT_TMO ;
 int esp_apptrace_lock_take (TYPE_1__*,int *) ;
 int esp_apptrace_tmo_init (int *,int ) ;
 TYPE_1__ s_sys_view_lock ;

unsigned SEGGER_SYSVIEW_X_SysView_Lock(void)
{
    esp_apptrace_tmo_t tmo;
    esp_apptrace_tmo_init(&tmo, SEGGER_LOCK_WAIT_TMO);
    esp_apptrace_lock_take(&s_sys_view_lock, &tmo);

    return s_sys_view_lock.int_state;
}
