
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adv_data_sem ;
 int adv_enable_sem ;
 int adv_param_sem ;
 int osi_sem_new (int *,int,int ) ;
 int scan_enable_sem ;
 int scan_param_sem ;

void btm_ble_sem_init(void)
{
    osi_sem_new(&adv_enable_sem, 1, 0);
    osi_sem_new(&adv_data_sem, 1, 0);
    osi_sem_new(&adv_param_sem, 1, 0);
    osi_sem_new(&scan_enable_sem, 1, 0);
    osi_sem_new(&scan_param_sem, 1, 0);
}
