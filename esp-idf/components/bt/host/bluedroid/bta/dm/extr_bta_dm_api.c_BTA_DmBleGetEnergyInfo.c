
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_energy_info_cback; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_ENERGY_INFO ;
typedef int tBTA_BLE_ENERGY_INFO_CBACK ;
typedef int tBLE_BD_ADDR ;
typedef int UINT16 ;


 int APPL_TRACE_API (char*) ;
 int BTA_DM_API_BLE_ENERGY_INFO_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleGetEnergyInfo(tBTA_BLE_ENERGY_INFO_CBACK *p_cmpl_cback)
{
    tBTA_DM_API_ENERGY_INFO *p_msg;
    APPL_TRACE_API ("BTA_DmBleGetEnergyInfo");

    UINT16 len = sizeof(tBTA_DM_API_ENERGY_INFO) + sizeof(tBLE_BD_ADDR);

    if ((p_msg = (tBTA_DM_API_ENERGY_INFO *) osi_malloc(len)) != ((void*)0)) {
        memset (p_msg, 0, len);
        p_msg->hdr.event = BTA_DM_API_BLE_ENERGY_INFO_EVT;
        p_msg->p_energy_info_cback = p_cmpl_cback;
        bta_sys_sendmsg(p_msg);
    }
}
