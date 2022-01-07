
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT16 ;
struct TYPE_7__ {int (* transmit_downward ) (scalar_t__,TYPE_1__*) ;} ;
struct TYPE_6__ {scalar_t__ event; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ BT_SUB_EVT_MASK ;
 scalar_t__ LOCAL_BLE_CONTROLLER_ID ;
 scalar_t__ LOCAL_BR_EDR_CONTROLLER_ID ;
 TYPE_4__* hci ;
 int osi_free (TYPE_1__*) ;
 int stub1 (scalar_t__,TYPE_1__*) ;

void bte_main_hci_send (BT_HDR *p_msg, UINT16 event)
{
    UINT16 sub_event = event & BT_SUB_EVT_MASK;

    p_msg->event = event;




    if ((sub_event == LOCAL_BR_EDR_CONTROLLER_ID) || (sub_event == LOCAL_BLE_CONTROLLER_ID)) {

        hci->transmit_downward(event, p_msg);
    } else {

        osi_free(p_msg);
    }
}
