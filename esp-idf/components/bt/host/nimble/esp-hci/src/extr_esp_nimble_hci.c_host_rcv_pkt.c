
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 int BLE_HCI_EVCODE_HW_ERROR ;
 int BLE_HCI_EVCODE_LE_META ;
 int BLE_HCI_EVENT_HDR_LEN ;
 int BLE_HCI_LE_SUBEV_ADV_RPT ;
 int BLE_HCI_TRANS_BUF_EVT_HI ;
 int BLE_HCI_TRANS_BUF_EVT_LO ;
 int BLE_HCI_UART_H4_ACL ;
 int BLE_HCI_UART_H4_EVT ;
 int UINT8_MAX ;
 int assert (int) ;
 int ble_hci_rx_acl (int *,scalar_t__) ;
 int * ble_hci_trans_buf_alloc (int ) ;
 int ble_hci_trans_ll_evt_tx (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int host_rcv_pkt(uint8_t *data, uint16_t len)
{

    if (data[0] == BLE_HCI_UART_H4_EVT) {
        uint8_t *evbuf;
        int totlen;
        int rc;

        totlen = BLE_HCI_EVENT_HDR_LEN + data[2];
        assert(totlen <= UINT8_MAX + BLE_HCI_EVENT_HDR_LEN);

        if (data[1] == BLE_HCI_EVCODE_HW_ERROR) {
            assert(0);
        }


        if ((data[1] == BLE_HCI_EVCODE_LE_META) && (data[3] == BLE_HCI_LE_SUBEV_ADV_RPT)) {
            evbuf = ble_hci_trans_buf_alloc(BLE_HCI_TRANS_BUF_EVT_LO);

            if (!evbuf) {
                return 0;
            }
        } else {
            evbuf = ble_hci_trans_buf_alloc(BLE_HCI_TRANS_BUF_EVT_HI);
            assert(evbuf != ((void*)0));
        }

        memcpy(evbuf, &data[1], totlen);

        rc = ble_hci_trans_ll_evt_tx(evbuf);
        assert(rc == 0);
    } else if (data[0] == BLE_HCI_UART_H4_ACL) {
        ble_hci_rx_acl(data + 1, len - 1);
    }
    return 0;
}
