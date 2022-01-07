
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT8 ;
typedef scalar_t__ UINT32 ;


 int BTM_NO_RESOURCES ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int OSI_SEM_MAX_TIMEOUT ;
 int adv_data_lock ;
 int adv_data_sem ;
 int adv_data_status ;
 scalar_t__ btsnd_hcic_ble_set_adv_data (int ,int *) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_take (int *,int ) ;

tBTM_STATUS BTM_BleWriteAdvDataRaw(UINT8 *p_raw_adv, UINT32 raw_adv_len)
{
    tBTM_STATUS ret;
    osi_mutex_lock(&adv_data_lock, OSI_MUTEX_MAX_TIMEOUT);
    if (btsnd_hcic_ble_set_adv_data((UINT8)raw_adv_len, p_raw_adv)) {
        osi_sem_take(&adv_data_sem, OSI_SEM_MAX_TIMEOUT);
        ret = adv_data_status;
    } else {
        ret = BTM_NO_RESOURCES;
    }
    osi_mutex_unlock(&adv_data_lock);

    return ret;
}
