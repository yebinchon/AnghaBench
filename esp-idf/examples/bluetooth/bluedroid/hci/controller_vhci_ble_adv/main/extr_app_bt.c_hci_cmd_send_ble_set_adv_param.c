
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int esp_vhci_host_send_packet (int ,int) ;
 int hci_cmd_buf ;
 int make_cmd_ble_set_adv_param (int ,int,int,int,int,int,int*,int,int) ;

__attribute__((used)) static void hci_cmd_send_ble_set_adv_param(void)
{
    uint16_t adv_intv_min = 256;
    uint16_t adv_intv_max = 256;
    uint8_t adv_type = 0;
    uint8_t own_addr_type = 0;
    uint8_t peer_addr_type = 0;
    uint8_t peer_addr[6] = {0x80, 0x81, 0x82, 0x83, 0x84, 0x85};
    uint8_t adv_chn_map = 0x07;
    uint8_t adv_filter_policy = 0;

    uint16_t sz = make_cmd_ble_set_adv_param(hci_cmd_buf,
                  adv_intv_min,
                  adv_intv_max,
                  adv_type,
                  own_addr_type,
                  peer_addr_type,
                  peer_addr,
                  adv_chn_map,
                  adv_filter_policy);
    esp_vhci_host_send_packet(hci_cmd_buf, sz);
}
