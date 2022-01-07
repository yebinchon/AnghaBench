
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adv_data_lock ;
 int adv_enable_lock ;
 int adv_param_lock ;
 int osi_mutex_free (int *) ;
 int scan_enable_lock ;
 int scan_param_lock ;

void btm_ble_lock_free(void)
{
    osi_mutex_free(&adv_enable_lock);
    osi_mutex_free(&adv_data_lock);
    osi_mutex_free(&adv_param_lock);
    osi_mutex_free(&scan_enable_lock);
    osi_mutex_free(&scan_param_lock);
}
