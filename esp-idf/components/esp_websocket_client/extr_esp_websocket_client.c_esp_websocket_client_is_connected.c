
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_websocket_client_handle_t ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ WEBSOCKET_STATE_CONNECTED ;

bool esp_websocket_client_is_connected(esp_websocket_client_handle_t client)
{
    if (client == ((void*)0)) {
        return 0;
    }
    return client->state == WEBSOCKET_STATE_CONNECTED;
}
