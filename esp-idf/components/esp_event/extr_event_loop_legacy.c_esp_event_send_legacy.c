
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_id; } ;
typedef TYPE_1__ system_event_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 int SYSTEM_EVENT ;
 int TAG ;
 int esp_event_post (int ,int ,TYPE_1__*,int,int ) ;
 int s_initialized ;

esp_err_t esp_event_send_legacy(system_event_t *event)
{
    if (!s_initialized) {
        ESP_LOGE(TAG, "system event loop not initialized via esp_event_loop_init");
        return ESP_ERR_INVALID_STATE;
    }

    return esp_event_post(SYSTEM_EVENT, event->event_id, event, sizeof(*event), 0);
}
