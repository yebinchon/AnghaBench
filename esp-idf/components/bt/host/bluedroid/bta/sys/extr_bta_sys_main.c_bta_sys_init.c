
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_DEV_STATUS_CB ;
typedef int tBTA_SYS_CB ;
typedef int data_free_fn ;


 int APPL_INITIAL_TRACE_LEVEL ;
 int BTA_ALARM_HASH_MAP_SIZE ;
 int BTA_ID_SYS ;
 int BTM_RegisterForDeviceStatusNotif (int *) ;
 int appl_trace_level ;
 int bta_alarm_hash_map ;
 int bta_alarm_lock ;
 int bta_ar_init () ;
 int bta_sys_cb ;
 int bta_sys_hw_btm_cback ;
 int bta_sys_hw_reg ;
 int bta_sys_register (int ,int *) ;
 int hash_function_pointer ;
 int hash_map_new (int ,int ,int *,int ,int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ osi_alarm_free ;
 int osi_mutex_new (int *) ;

void bta_sys_init(void)
{
    memset(&bta_sys_cb, 0, sizeof(tBTA_SYS_CB));

    osi_mutex_new(&bta_alarm_lock);

    bta_alarm_hash_map = hash_map_new(BTA_ALARM_HASH_MAP_SIZE,
                                      hash_function_pointer, ((void*)0), (data_free_fn)osi_alarm_free, ((void*)0));

    appl_trace_level = APPL_INITIAL_TRACE_LEVEL;


    bta_sys_register( BTA_ID_SYS, &bta_sys_hw_reg);


    BTM_RegisterForDeviceStatusNotif ((tBTM_DEV_STATUS_CB *)&bta_sys_hw_btm_cback );





}
