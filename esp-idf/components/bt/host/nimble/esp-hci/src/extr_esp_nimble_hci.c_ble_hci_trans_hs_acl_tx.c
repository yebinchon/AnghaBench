
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct os_mbuf {int dummy; } ;


 int BLE_ACL_BUF_SIZE ;
 int BLE_HCI_UART_H4_ACL ;
 int BLE_HS_EAGAIN ;
 int ESP_LOGE (int ,char*) ;
 int MYNEWT_VAL (int ) ;
 scalar_t__ OS_MBUF_PKTLEN (struct os_mbuf*) ;
 int TAG ;
 int esp_vhci_host_check_send_available () ;
 int esp_vhci_host_send_packet (int *,scalar_t__) ;
 int os_mbuf_copydata (struct os_mbuf*,int ,scalar_t__,int *) ;
 int os_mbuf_free_chain (struct os_mbuf*) ;

int ble_hci_trans_hs_acl_tx(struct os_mbuf *om)
{
    uint16_t len = 0;
    uint8_t data[MYNEWT_VAL(BLE_ACL_BUF_SIZE) + 1];

    if (OS_MBUF_PKTLEN(om) == 0) {
        os_mbuf_free_chain(om);
        return 0;
    }
    data[0] = BLE_HCI_UART_H4_ACL;
    len++;

    if (!esp_vhci_host_check_send_available()) {
        ESP_LOGE(TAG, "Controller not ready to receive packets from host at this time, try again after sometime");
        return BLE_HS_EAGAIN;
    }

    os_mbuf_copydata(om, 0, OS_MBUF_PKTLEN(om), &data[1]);
    len += OS_MBUF_PKTLEN(om);

    esp_vhci_host_send_packet(data, len);

    os_mbuf_free_chain(om);

    return 0;
}
