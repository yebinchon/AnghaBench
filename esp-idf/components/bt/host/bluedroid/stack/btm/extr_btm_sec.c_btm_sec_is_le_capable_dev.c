
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_type; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_DEVICE_TYPE_BLE ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* btm_find_dev (int ) ;

BOOLEAN btm_sec_is_le_capable_dev (BD_ADDR bda)
{
    BOOLEAN le_capable = FALSE;


    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bda);
    if (p_dev_rec && (p_dev_rec->device_type & BT_DEVICE_TYPE_BLE) == BT_DEVICE_TYPE_BLE) {
        le_capable = TRUE;
    }

    return le_capable;
}
