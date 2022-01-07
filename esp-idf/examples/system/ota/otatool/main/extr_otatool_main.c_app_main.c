
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int label; } ;
typedef TYPE_1__ esp_partition_t ;


 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 TYPE_1__* esp_ota_get_running_partition () ;

void app_main(void)
{
    ESP_LOGI(TAG, "OTA Tool Example");

    const esp_partition_t *running = esp_ota_get_running_partition();


    ESP_LOGI(TAG, "Running partition: %s", running->label);

    ESP_LOGI(TAG, "Example end");
}
