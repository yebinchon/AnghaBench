
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_info; int event_id; } ;
typedef TYPE_1__ system_event_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;
typedef scalar_t__ esp_err_t ;
typedef int TickType_t ;


 scalar_t__ ESP_OK ;
 int esp_event_legacy_event_id (int ,int ) ;
 scalar_t__ esp_event_post (int ,int ,void*,size_t,int ) ;
 scalar_t__ esp_event_send_legacy (TYPE_1__*) ;
 int memcpy (int *,void*,size_t) ;

esp_err_t esp_event_send_internal(esp_event_base_t event_base,
                            int32_t event_id,
                            void* event_data,
                            size_t event_data_size,
                            TickType_t ticks_to_wait)
{
    system_event_t event;


    esp_err_t err = esp_event_post(event_base, event_id, event_data, event_data_size, ticks_to_wait);
    if (err != ESP_OK) {
        return err;
    }

    event.event_id = esp_event_legacy_event_id(event_base, event_id);

    if (event_data) {
        memcpy(&event.event_info, event_data, event_data_size);
    }

    return esp_event_send_legacy(&event);
}
