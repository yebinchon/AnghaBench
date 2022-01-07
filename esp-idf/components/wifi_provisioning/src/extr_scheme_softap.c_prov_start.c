
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int port; } ;
struct TYPE_7__ {TYPE_1__ config; } ;
struct TYPE_9__ {TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_4__ httpd_config; int password; int ssid; } ;
typedef TYPE_3__ wifi_prov_softap_config_t ;
typedef int protocomm_t ;
typedef TYPE_4__ protocomm_httpd_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int mdns_service_add (char*,char*,char*,int ,int *,int ) ;
 int mdns_service_txt_item_set (char*,char*,char*,char*) ;
 int protocomm_httpd_start (int *,TYPE_4__*) ;
 int protocomm_httpd_stop (int *) ;
 int start_wifi_ap (int ,int ) ;

__attribute__((used)) static esp_err_t prov_start(protocomm_t *pc, void *config)
{
    if (!pc) {
        ESP_LOGE(TAG, "Protocomm handle cannot be null");
        return ESP_ERR_INVALID_ARG;
    }

    if (!config) {
        ESP_LOGE(TAG, "Cannot start with null configuration");
        return ESP_ERR_INVALID_ARG;
    }

    wifi_prov_softap_config_t *softap_config = (wifi_prov_softap_config_t *) config;

    protocomm_httpd_config_t *httpd_config = &softap_config->httpd_config;


    esp_err_t err = protocomm_httpd_start(pc, httpd_config);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start protocomm HTTP server");
        return err;
    }


    err = start_wifi_ap(softap_config->ssid, softap_config->password);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start Wi-Fi AP");
        protocomm_httpd_stop(pc);
        return err;
    }





    err = mdns_service_add("Wi-Fi Provisioning Service", "_esp_wifi_prov", "_tcp",
                           softap_config->httpd_config.data.config.port, ((void*)0), 0);
    if (err != ESP_OK) {


        ESP_LOGW(TAG, "Error adding mDNS service! Check if mDNS is running");
    } else {


        err |= mdns_service_txt_item_set("_esp_wifi_prov", "_tcp", "version_endpoint", "/proto-ver");
        err |= mdns_service_txt_item_set("_esp_wifi_prov", "_tcp", "session_endpoint", "/prov-session");
        err |= mdns_service_txt_item_set("_esp_wifi_prov", "_tcp", "config_endpoint", "/prov-config");
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "Error adding mDNS service text item");
        }
    }
    return ESP_OK;
}
