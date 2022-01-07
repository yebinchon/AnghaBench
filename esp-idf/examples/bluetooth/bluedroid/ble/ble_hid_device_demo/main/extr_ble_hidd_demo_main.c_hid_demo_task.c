
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int HID_CONSUMER_VOLUME_DOWN ;
 int HID_CONSUMER_VOLUME_UP ;
 int HID_DEMO_TAG ;
 int esp_hidd_send_consumer_value (int ,int ,int) ;
 int hid_conn_id ;
 int portTICK_PERIOD_MS ;
 scalar_t__ sec_conn ;
 int send_volum_up ;
 int vTaskDelay (int) ;

void hid_demo_task(void *pvParameters)
{
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    while(1) {
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        if (sec_conn) {
            ESP_LOGI(HID_DEMO_TAG, "Send the volume");
            send_volum_up = 1;


            esp_hidd_send_consumer_value(hid_conn_id, HID_CONSUMER_VOLUME_UP, 1);
            vTaskDelay(3000 / portTICK_PERIOD_MS);
            if (send_volum_up) {
                send_volum_up = 0;
                esp_hidd_send_consumer_value(hid_conn_id, HID_CONSUMER_VOLUME_UP, 0);
                esp_hidd_send_consumer_value(hid_conn_id, HID_CONSUMER_VOLUME_DOWN, 1);
                vTaskDelay(3000 / portTICK_PERIOD_MS);
                esp_hidd_send_consumer_value(hid_conn_id, HID_CONSUMER_VOLUME_DOWN, 0);
            }
        }
    }
}
