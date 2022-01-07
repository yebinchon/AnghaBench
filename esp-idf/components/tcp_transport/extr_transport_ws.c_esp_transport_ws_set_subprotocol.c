
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sub_protocol; } ;
typedef TYPE_1__ transport_ws_t ;
typedef int * esp_transport_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 TYPE_1__* esp_transport_get_context_data (int *) ;
 int free (int *) ;
 int * strdup (char const*) ;

esp_err_t esp_transport_ws_set_subprotocol(esp_transport_handle_t t, const char *sub_protocol)
{
    if (t == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    transport_ws_t *ws = esp_transport_get_context_data(t);
    if (ws->sub_protocol) {
        free(ws->sub_protocol);
    }
    if (sub_protocol == ((void*)0)) {
        ws->sub_protocol = ((void*)0);
        return ESP_OK;
    }
    ws->sub_protocol = strdup(sub_protocol);
    if (ws->sub_protocol == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
