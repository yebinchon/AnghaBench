
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int esp_vhci_host_send_packet (int ,int ) ;
 int hci_cmd_buf ;
 int make_cmd_ble_set_adv_enable (int ,int) ;

__attribute__((used)) static void hci_cmd_send_ble_adv_start(void)
{
    uint16_t sz = make_cmd_ble_set_adv_enable (hci_cmd_buf, 1);
    esp_vhci_host_send_packet(hci_cmd_buf, sz);
}
