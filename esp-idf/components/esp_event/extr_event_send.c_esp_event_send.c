
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ esp_event_send_legacy (int *) ;
 scalar_t__ esp_event_send_to_default_loop (int *) ;

esp_err_t esp_event_send(system_event_t *event)
{

    esp_err_t err = esp_event_send_to_default_loop(event);
    if (err != ESP_OK) {
        return err;
    }


    err = esp_event_send_legacy(event);
    if (err != ESP_OK) {
        return err;
    }

    return ESP_OK;
}
