
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvs_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGI (int ,char*,char const*,char*) ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 int TAG ;
 int nvs_close (int ) ;
 scalar_t__ nvs_commit (int ) ;
 scalar_t__ nvs_erase_all (int ) ;
 scalar_t__ nvs_open (char const*,int ,int *) ;

__attribute__((used)) static esp_err_t erase_all(const char *name)
{
    nvs_handle_t nvs;

    esp_err_t err = nvs_open(name, NVS_READWRITE, &nvs);
    if (err == ESP_OK) {
        err = nvs_erase_all(nvs);
        if (err == ESP_OK) {
            err = nvs_commit(nvs);
        }
    }

    ESP_LOGI(TAG, "Namespace '%s' was %s erased", name, (err == ESP_OK) ? "" : "not");

    nvs_close(nvs);
    return ESP_OK;
}
