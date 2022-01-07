
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int DEMO_TAG ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int esp_ble_gap_register_callback (int ) ;
 int esp_err_to_name (int ) ;
 int esp_gap_cb ;

void esp_eddystone_appRegister(void)
{
    esp_err_t status;

    ESP_LOGI(DEMO_TAG,"Register callback");


    if((status = esp_ble_gap_register_callback(esp_gap_cb)) != ESP_OK) {
        ESP_LOGE(DEMO_TAG,"gap register error: %s", esp_err_to_name(status));
        return;
    }
}
