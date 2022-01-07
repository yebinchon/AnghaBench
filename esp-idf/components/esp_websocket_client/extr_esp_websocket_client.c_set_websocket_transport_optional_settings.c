
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* esp_websocket_client_handle_t ;
typedef scalar_t__ esp_transport_handle_t ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {scalar_t__ subprotocol; scalar_t__ path; } ;


 int esp_transport_ws_set_path (scalar_t__,scalar_t__) ;
 int esp_transport_ws_set_subprotocol (scalar_t__,scalar_t__) ;

__attribute__((used)) static void set_websocket_transport_optional_settings(esp_websocket_client_handle_t client, esp_transport_handle_t trans)
{
    if (trans && client->config->path) {
        esp_transport_ws_set_path(trans, client->config->path);
    }
    if (trans && client->config->subprotocol) {
        esp_transport_ws_set_subprotocol(trans, client->config->subprotocol);
    }
}
