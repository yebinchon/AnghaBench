
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 scalar_t__ esp_event_loop_delete (int *) ;
 int * s_default_loop ;

esp_err_t esp_event_loop_delete_default(void)
{
    if (!s_default_loop) {
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t err;

    err = esp_event_loop_delete(s_default_loop);

    if (err != ESP_OK) {
        return err;
    }

    s_default_loop = ((void*)0);

    return ESP_OK;
}
