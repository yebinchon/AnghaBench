
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_5__ {int event; scalar_t__ offset; } ;
typedef TYPE_1__ BT_HDR ;


 int BTM_TRACE_ERROR (char*) ;
 int BT_EVT_TO_LM_HCI_SCO ;
 int LOCAL_BLE_CONTROLLER_ID ;
 int bte_main_hci_send (TYPE_1__*,int ) ;
 int osi_free (TYPE_1__*) ;

__attribute__((used)) static void hci_sco_data_to_lower(BT_HDR *p_buf)
{
    p_buf->event = BT_EVT_TO_LM_HCI_SCO;
    if (p_buf->offset == 0) {
        BTM_TRACE_ERROR("offset cannot be 0");
        osi_free(p_buf);
    }

    bte_main_hci_send(p_buf, (UINT16)(BT_EVT_TO_LM_HCI_SCO | LOCAL_BLE_CONTROLLER_ID));
}
