
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocomm_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int mdns_service_remove (char*,char*) ;
 scalar_t__ protocomm_httpd_stop (int *) ;

__attribute__((used)) static esp_err_t prov_stop(protocomm_t *pc)
{
    esp_err_t err = protocomm_httpd_stop(pc);
    if (err != ESP_OK) {
        ESP_LOGW(TAG, "Error occurred while stopping protocomm_httpd");
    }

    mdns_service_remove("_esp_wifi_prov", "_tcp");
    return err;
}
