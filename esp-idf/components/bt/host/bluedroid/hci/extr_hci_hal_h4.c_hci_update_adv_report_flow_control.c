
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adv_free_num; } ;
typedef int BT_HDR ;


 int btsnd_hcic_ble_update_adv_report_flow_control (scalar_t__) ;
 scalar_t__ esp_vhci_host_check_send_available () ;
 TYPE_1__ hci_hal_env ;
 scalar_t__ host_recv_adv_packet (int *) ;

__attribute__((used)) static void hci_update_adv_report_flow_control(BT_HDR *packet)
{

    if(host_recv_adv_packet(packet)) {

        hci_hal_env.adv_free_num ++;
        if (esp_vhci_host_check_send_available()){

            btsnd_hcic_ble_update_adv_report_flow_control(hci_hal_env.adv_free_num);
            hci_hal_env.adv_free_num = 0;
        } else {

        }
    }

}
