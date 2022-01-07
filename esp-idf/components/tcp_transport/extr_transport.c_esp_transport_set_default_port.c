
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int port; } ;


 int ESP_FAIL ;
 int ESP_OK ;

esp_err_t esp_transport_set_default_port(esp_transport_handle_t t, int port)
{
    if (t == ((void*)0)) {
        return ESP_FAIL;
    }
    t->port = port;
    return ESP_OK;
}
