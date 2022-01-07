
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_TRANSPORT ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int * read_rssi_cb; int transport; int remote_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_READ_RSSI ;
typedef int tBTA_CMPL_CB ;
typedef int BD_ADDR ;


 int BTA_DM_API_BLE_READ_RSSI_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleReadRSSI(BD_ADDR remote_addr, tBTA_TRANSPORT transport, tBTA_CMPL_CB *cmpl_cb)
{
    tBTA_DM_API_READ_RSSI *p_msg;
    if ((p_msg = (tBTA_DM_API_READ_RSSI *)osi_malloc(sizeof(tBTA_DM_API_READ_RSSI))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_READ_RSSI_EVT;
        memcpy(p_msg->remote_addr, remote_addr, sizeof(BD_ADDR));
        p_msg->transport = transport;
        p_msg->read_rssi_cb = cmpl_cb;
        bta_sys_sendmsg(p_msg);
    }
}
