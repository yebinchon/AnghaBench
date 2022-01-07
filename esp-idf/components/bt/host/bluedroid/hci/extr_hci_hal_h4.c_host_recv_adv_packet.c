
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* data; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ DATA_TYPE_EVENT ;
 scalar_t__ HCI_BLE_ADV_DISCARD_REPORT_EVT ;
 scalar_t__ HCI_BLE_ADV_PKT_RPT_EVT ;
 scalar_t__ HCI_BLE_EVENT ;
 int assert (TYPE_1__*) ;

bool host_recv_adv_packet(BT_HDR *packet)
{
    assert(packet);
    if(packet->data[0] == DATA_TYPE_EVENT && packet->data[1] == HCI_BLE_EVENT) {
        if(packet->data[3] == HCI_BLE_ADV_PKT_RPT_EVT

        || packet->data[3] == HCI_BLE_ADV_DISCARD_REPORT_EVT

        ) {
            return 1;
        }
    }
    return 0;
}
