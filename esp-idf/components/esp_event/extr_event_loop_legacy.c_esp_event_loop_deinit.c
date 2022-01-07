
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SYSTEM_EVENT ;
 int TAG ;
 scalar_t__ esp_event_handler_unregister (int ,int ,int ) ;
 scalar_t__ esp_event_loop_delete_default () ;
 int esp_event_post_to_user ;
 int * s_event_ctx ;
 int * s_event_handler_cb ;
 int s_initialized ;

esp_err_t esp_event_loop_deinit(void)
{
    if (!s_initialized) {
        ESP_LOGE(TAG, "system event loop not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t err = esp_event_handler_unregister(SYSTEM_EVENT, ESP_EVENT_ANY_ID, esp_event_post_to_user);
    if (err != ESP_OK) {
        return err;
    }

    err = esp_event_loop_delete_default();
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
        return err;
    }

    s_initialized = 0;
    s_event_handler_cb = ((void*)0);
    s_event_ctx = ((void*)0);
    return ESP_OK;
}
