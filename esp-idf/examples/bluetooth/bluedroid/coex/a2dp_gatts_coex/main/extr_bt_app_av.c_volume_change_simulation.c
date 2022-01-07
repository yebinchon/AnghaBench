
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BT_RC_TG_TAG ;
 int ESP_LOGI (int ,char*) ;
 int portTICK_RATE_MS ;
 int s_volume ;
 int vTaskDelay (int) ;
 int volume_set_by_local_host (int) ;

__attribute__((used)) static void volume_change_simulation(void *arg)
{
    ESP_LOGI(BT_RC_TG_TAG, "start volume change simulation");

    for (;;) {
        vTaskDelay(10000 / portTICK_RATE_MS);

        uint8_t volume = (s_volume + 5) & 0x7f;
        volume_set_by_local_host(volume);
    }
}
