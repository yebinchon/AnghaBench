
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBT_DEVICE_TYPE ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int auth_mode; int dev_type; int addr_type; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_ADD_BLE_DEVICE ;
typedef int tBLE_ADDR_TYPE ;
typedef int BD_ADDR ;


 int BTA_DM_API_ADD_BLEDEVICE_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmAddBleDevice(BD_ADDR bd_addr, tBLE_ADDR_TYPE addr_type, int auth_mode, tBT_DEVICE_TYPE dev_type)
{
    tBTA_DM_API_ADD_BLE_DEVICE *p_msg;

    if ((p_msg = (tBTA_DM_API_ADD_BLE_DEVICE *) osi_malloc(sizeof(tBTA_DM_API_ADD_BLE_DEVICE))) != ((void*)0)) {
        memset (p_msg, 0, sizeof(tBTA_DM_API_ADD_BLE_DEVICE));

        p_msg->hdr.event = BTA_DM_API_ADD_BLEDEVICE_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->addr_type = addr_type;
        p_msg->auth_mode = auth_mode;
        p_msg->dev_type = dev_type;

        bta_sys_sendmsg(p_msg);
    }
}
