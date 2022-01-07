
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adv_data_sem ;
 int adv_enable_sem ;
 int adv_param_sem ;
 int osi_sem_free (int *) ;
 int scan_enable_sem ;
 int scan_param_sem ;

void btm_ble_sem_free(void)
{
    osi_sem_free(&adv_enable_sem);
    osi_sem_free(&adv_data_sem);
    osi_sem_free(&adv_param_sem);
    osi_sem_free(&scan_enable_sem);
    osi_sem_free(&scan_param_sem);
}
