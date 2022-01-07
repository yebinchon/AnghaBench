
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sub_protocol; struct TYPE_4__* path; struct TYPE_4__* buffer; } ;
typedef TYPE_1__ transport_ws_t ;
typedef int esp_transport_handle_t ;
typedef int esp_err_t ;


 TYPE_1__* esp_transport_get_context_data (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static esp_err_t ws_destroy(esp_transport_handle_t t)
{
    transport_ws_t *ws = esp_transport_get_context_data(t);
    free(ws->buffer);
    free(ws->path);
    free(ws->sub_protocol);
    free(ws);
    return 0;
}
