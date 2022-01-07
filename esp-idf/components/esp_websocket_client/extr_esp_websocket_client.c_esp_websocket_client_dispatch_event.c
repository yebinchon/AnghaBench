
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_websocket_event_id_t ;
struct TYPE_5__ {char const* data_ptr; int data_len; int op_code; } ;
typedef TYPE_1__ esp_websocket_event_data_t ;
typedef TYPE_2__* esp_websocket_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int event_handle; int last_opcode; } ;


 int ESP_OK ;
 int WEBSOCKET_EVENTS ;
 int esp_event_loop_run (int ,int ) ;
 int esp_event_post_to (int ,int ,int ,TYPE_1__*,int,int ) ;
 int portMAX_DELAY ;

__attribute__((used)) static esp_err_t esp_websocket_client_dispatch_event(esp_websocket_client_handle_t client,
                                                     esp_websocket_event_id_t event,
                                                     const char *data,
                                                     int data_len)
{
    esp_err_t err;
    esp_websocket_event_data_t event_data;
    event_data.data_ptr = data;
    event_data.data_len = data_len;
    event_data.op_code = client->last_opcode;

    if ((err = esp_event_post_to(client->event_handle,
                                 WEBSOCKET_EVENTS, event,
                                 &event_data,
                                 sizeof(esp_websocket_event_data_t),
                                 portMAX_DELAY)) != ESP_OK) {
        return err;
    }
    return esp_event_loop_run(client->event_handle, 0);
}
