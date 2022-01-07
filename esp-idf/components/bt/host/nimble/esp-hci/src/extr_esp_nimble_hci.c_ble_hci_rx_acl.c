
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct os_mbuf {int dummy; } ;


 int BLE_ACL_BUF_SIZE ;
 int BLE_HCI_DATA_HDR_SZ ;
 int MYNEWT_VAL (int ) ;
 int OS_ENTER_CRITICAL (int) ;
 int OS_EXIT_CRITICAL (int) ;
 int ble_hci_rx_acl_hs_cb (struct os_mbuf*,int *) ;
 struct os_mbuf* ble_hci_trans_acl_buf_alloc () ;
 scalar_t__ os_mbuf_append (struct os_mbuf*,int *,int ) ;
 int os_mbuf_free_chain (struct os_mbuf*) ;

__attribute__((used)) static void ble_hci_rx_acl(uint8_t *data, uint16_t len)
{
    struct os_mbuf *m;
    int sr;
    if (len < BLE_HCI_DATA_HDR_SZ || len > MYNEWT_VAL(BLE_ACL_BUF_SIZE)) {
        return;
    }

    m = ble_hci_trans_acl_buf_alloc();

    if (!m) {
        return;
    }
    if (os_mbuf_append(m, data, len)) {
        os_mbuf_free_chain(m);
        return;
    }
    OS_ENTER_CRITICAL(sr);
    if (ble_hci_rx_acl_hs_cb) {
        ble_hci_rx_acl_hs_cb(m, ((void*)0));
    }
    OS_EXIT_CRITICAL(sr);
}
