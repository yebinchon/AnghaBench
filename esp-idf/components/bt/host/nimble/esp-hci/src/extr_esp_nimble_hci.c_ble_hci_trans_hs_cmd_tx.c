
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ BLE_HCI_CMD_HDR_LEN ;
 scalar_t__ BLE_HCI_UART_H4_CMD ;
 int BLE_HS_EAGAIN ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int assert (int ) ;
 int ble_hci_trans_buf_free (scalar_t__*) ;
 int esp_vhci_host_check_send_available () ;
 int esp_vhci_host_send_packet (scalar_t__*,scalar_t__) ;

int ble_hci_trans_hs_cmd_tx(uint8_t *cmd)
{
    uint16_t len;

    assert(cmd != ((void*)0));
    *cmd = BLE_HCI_UART_H4_CMD;
    len = BLE_HCI_CMD_HDR_LEN + cmd[3] + 1;
    if (!esp_vhci_host_check_send_available()) {
        ESP_LOGE(TAG, "Controller not ready to receive packets from host at this time, try again after sometime");
        return BLE_HS_EAGAIN;
    }
    esp_vhci_host_send_packet(cmd, len);

    ble_hci_trans_buf_free(cmd);
    return 0;
}
