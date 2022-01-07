
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvs_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGI (int ,char*,char const*) ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 int TAG ;
 int current_namespace ;
 int nvs_close (int ) ;
 scalar_t__ nvs_commit (int ) ;
 scalar_t__ nvs_erase_key (int ,char const*) ;
 scalar_t__ nvs_open (int ,int ,int *) ;

__attribute__((used)) static esp_err_t erase(const char *key)
{
    nvs_handle_t nvs;

    esp_err_t err = nvs_open(current_namespace, NVS_READWRITE, &nvs);
    if (err == ESP_OK) {
        err = nvs_erase_key(nvs, key);
        if (err == ESP_OK) {
            err = nvs_commit(nvs);
            if (err == ESP_OK) {
                ESP_LOGI(TAG, "Value with key '%s' erased", key);
            }
        }
        nvs_close(nvs);
    }

    return err;
}
