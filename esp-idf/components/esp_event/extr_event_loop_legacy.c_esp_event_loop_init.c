
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_cb_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SYSTEM_EVENT ;
 int TAG ;
 scalar_t__ esp_event_handler_register (int ,int ,int ,int *) ;
 scalar_t__ esp_event_loop_create_default () ;
 int esp_event_post_to_user ;
 void* s_event_ctx ;
 int s_event_handler_cb ;
 int s_initialized ;

esp_err_t esp_event_loop_init(system_event_cb_t cb, void *ctx)
{
    if (s_initialized) {
        ESP_LOGE(TAG, "system event loop already initialized");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t err = esp_event_loop_create_default();
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
        return err;
    }

    err = esp_event_handler_register(SYSTEM_EVENT, ESP_EVENT_ANY_ID, esp_event_post_to_user, ((void*)0));
    if (err != ESP_OK) {
        return err;
    }

    s_initialized = 1;
    s_event_handler_cb = cb;
    s_event_ctx = ctx;
    return ESP_OK;
}
