
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
typedef TYPE_1__ transport_ws_t ;
typedef int esp_transport_handle_t ;


 TYPE_1__* esp_transport_get_context_data (int ) ;

__attribute__((used)) static esp_transport_handle_t ws_get_payload_transport_handle(esp_transport_handle_t t)
{
    transport_ws_t *ws = esp_transport_get_context_data(t);
    return ws->parent;
}
