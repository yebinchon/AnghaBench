
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int protocomm_console_config_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int security; int * pc; int * pop; } ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int PROTOCOMM_CONSOLE_DEFAULT_CONFIG () ;
 int TAG ;
 TYPE_1__* g_prov ;
 scalar_t__ protocomm_add_endpoint (int *,char*,int ,void*) ;
 scalar_t__ protocomm_console_start (int *,int *) ;
 int protocomm_console_stop (int *) ;
 int * protocomm_new () ;
 int protocomm_security0 ;
 int protocomm_security1 ;
 int protocomm_set_security (int *,char*,int *,int *) ;
 int protocomm_set_version (int *,char*,char*) ;
 int wifi_prov_config_data_handler ;
 int wifi_prov_handlers ;

__attribute__((used)) static esp_err_t app_prov_start_service(void)
{

    g_prov->pc = protocomm_new();
    if (g_prov->pc == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to create new protocomm instance");
        return ESP_FAIL;
    }


    protocomm_console_config_t config = PROTOCOMM_CONSOLE_DEFAULT_CONFIG();


    if (protocomm_console_start(g_prov->pc, &config) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start console provisioning");
        return ESP_FAIL;
    }


    protocomm_set_version(g_prov->pc, "proto-ver", "V0.1");


    if (g_prov->security == 0) {
        protocomm_set_security(g_prov->pc, "prov-session", &protocomm_security0, ((void*)0));
    } else if (g_prov->security == 1) {
        protocomm_set_security(g_prov->pc, "prov-session", &protocomm_security1, g_prov->pop);
    }


    if (protocomm_add_endpoint(g_prov->pc, "prov-config",
                               wifi_prov_config_data_handler,
                               (void *) &wifi_prov_handlers) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set provisioning endpoint");
        protocomm_console_stop(g_prov->pc);
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Provisioning started");
    return ESP_OK;
}
