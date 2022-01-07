
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_vhci_host_check_send_available () ;
 int esp_vhci_host_register_callback (int *) ;
 int hci_cmd_send_ble_adv_start () ;
 int hci_cmd_send_ble_set_adv_data () ;
 int hci_cmd_send_ble_set_adv_param () ;
 int hci_cmd_send_reset () ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int vTaskDelay (int) ;
 int vhci_host_cb ;

void bleAdvtTask(void *pvParameters)
{
    int cmd_cnt = 0;
    bool send_avail = 0;
    esp_vhci_host_register_callback(&vhci_host_cb);
    printf("BLE advt task start\n");
    while (1) {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        send_avail = esp_vhci_host_check_send_available();
        if (send_avail) {
            switch (cmd_cnt) {
            case 0: hci_cmd_send_reset(); ++cmd_cnt; break;
            case 1: hci_cmd_send_ble_set_adv_param(); ++cmd_cnt; break;
            case 2: hci_cmd_send_ble_set_adv_data(); ++cmd_cnt; break;
            case 3: hci_cmd_send_ble_adv_start(); ++cmd_cnt; break;
            }
        }
        printf("BLE Advertise, flag_send_avail: %d, cmd_sent: %d\n", send_avail, cmd_cnt);
    }
}
