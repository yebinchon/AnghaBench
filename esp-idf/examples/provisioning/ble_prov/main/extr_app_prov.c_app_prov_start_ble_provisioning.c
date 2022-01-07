
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct app_prov_data {int security; int timer; int const* pop; } ;
typedef int protocomm_security_pop_t ;
struct TYPE_3__ {char* name; int dispatch_method; int * arg; int callback; } ;
typedef TYPE_1__ esp_timer_create_args_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_EVENT_ANY_ID ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int ESP_TIMER_TASK ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int TAG ;
 int WIFI_EVENT ;
 int _stop_prov_cb ;
 int app_prov_event_handler ;
 scalar_t__ app_prov_start_service () ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ esp_event_handler_register (int ,int ,int ,int *) ;
 scalar_t__ esp_timer_create (TYPE_1__*,int *) ;
 struct app_prov_data* g_prov ;

esp_err_t app_prov_start_ble_provisioning(int security, const protocomm_security_pop_t *pop)
{


    if (g_prov) {
        ESP_LOGI(TAG, "Invalid provisioning state");
        return ESP_FAIL;
    }


    g_prov = (struct app_prov_data *) calloc(1, sizeof(struct app_prov_data));
    if (!g_prov) {
        ESP_LOGI(TAG, "Unable to allocate prov data");
        return ESP_ERR_NO_MEM;
    }


    g_prov->pop = pop;
    g_prov->security = security;


    esp_timer_create_args_t timer_conf = {
        .callback = _stop_prov_cb,
        .arg = ((void*)0),
        .dispatch_method = ESP_TIMER_TASK,
        .name = "stop_ble_tm"
    };
    esp_err_t err = esp_timer_create(&timer_conf, &g_prov->timer);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to create timer");
        return err;
    }

    err = esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, app_prov_event_handler, ((void*)0));
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to register WiFi event handler");
        return err;
    }

    err = esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, app_prov_event_handler, ((void*)0));
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to register IP event handler");
        return err;
    }


    err = app_prov_start_service();
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Provisioning failed to start");
        return err;
    }

    ESP_LOGI(TAG, "BLE Provisioning started");
    return ESP_OK;
}
