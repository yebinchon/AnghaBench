
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
typedef int esp_err_t ;
typedef int connect_async_func ;
struct TYPE_3__ {int _connect_async; } ;


 int ESP_FAIL ;
 int ESP_OK ;

esp_err_t esp_transport_set_async_connect_func(esp_transport_handle_t t, connect_async_func _connect_async_func)
{
    if (t == ((void*)0)) {
        return ESP_FAIL;
    }
    t->_connect_async = _connect_async_func;
    return ESP_OK;
}
