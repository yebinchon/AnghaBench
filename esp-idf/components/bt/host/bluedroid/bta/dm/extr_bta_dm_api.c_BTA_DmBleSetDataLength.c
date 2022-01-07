
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SET_PKT_DATA_LENGTH_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int * p_set_pkt_data_cback; int tx_data_length; TYPE_1__ hdr; int remote_bda; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_SET_DATA_LENGTH ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTA_DM_API_SET_DATA_LENGTH_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleSetDataLength(BD_ADDR remote_device, UINT16 tx_data_length, tBTA_SET_PKT_DATA_LENGTH_CBACK *p_set_pkt_data_cback)
{
    tBTA_DM_API_BLE_SET_DATA_LENGTH *p_msg;

    if ((p_msg = (tBTA_DM_API_BLE_SET_DATA_LENGTH *)osi_malloc(sizeof(tBTA_DM_API_BLE_SET_DATA_LENGTH)))
            != ((void*)0)) {
        bdcpy(p_msg->remote_bda, remote_device);
        p_msg->hdr.event = BTA_DM_API_SET_DATA_LENGTH_EVT;
        p_msg->tx_data_length = tx_data_length;
        p_msg->p_set_pkt_data_cback = p_set_pkt_data_cback;

        bta_sys_sendmsg(p_msg);
    }
}
