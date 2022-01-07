
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wifi_prov_ctx_t ;
struct TYPE_8__ {int password; int ssid; } ;
typedef TYPE_2__ wifi_prov_config_set_data_t ;
struct TYPE_7__ {scalar_t__ password; scalar_t__ ssid; } ;
struct TYPE_9__ {TYPE_1__ sta; } ;
typedef TYPE_3__ wifi_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int free_config (int **) ;
 TYPE_3__* get_config (int **) ;
 TYPE_3__* new_config (int **) ;
 int strlcpy (char*,int ,int) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static esp_err_t set_config_handler(const wifi_prov_config_set_data_t *req_data, wifi_prov_ctx_t **ctx)
{
    wifi_config_t *wifi_cfg = get_config(ctx);
    if (wifi_cfg) {
        free_config(ctx);
    }

    wifi_cfg = new_config(ctx);
    if (!wifi_cfg) {
        ESP_LOGE(TAG, "Unable to allocate Wi-Fi config");
        return ESP_ERR_NO_MEM;
    }

    ESP_LOGD(TAG, "Wi-Fi Credentials Received");




    strncpy((char *) wifi_cfg->sta.ssid, req_data->ssid, sizeof(wifi_cfg->sta.ssid));



    strlcpy((char *) wifi_cfg->sta.password, req_data->password, sizeof(wifi_cfg->sta.password));
    return ESP_OK;
}
