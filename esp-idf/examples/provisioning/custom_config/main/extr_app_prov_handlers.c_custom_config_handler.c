
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {int version; int info; } ;
typedef TYPE_1__ custom_config_t ;


 int ESP_LOGI (int ,char*,int ,int ) ;
 int ESP_OK ;
 int TAG ;

__attribute__((used)) static esp_err_t custom_config_handler(const custom_config_t *config)
{
    ESP_LOGI(TAG, "Custom config received :\n\tInfo : %s\n\tVersion : %d",
             config->info, config->version);
    return ESP_OK;
}
