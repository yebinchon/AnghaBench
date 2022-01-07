
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int payload_transfer_func ;
typedef TYPE_1__* esp_transport_handle_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int _parent_transfer; } ;


 int ESP_FAIL ;
 int ESP_OK ;

esp_err_t esp_transport_set_parent_transport_func(esp_transport_handle_t t, payload_transfer_func _parent_transport)
{
    if (t == ((void*)0)) {
        return ESP_FAIL;
    }
    t->_parent_transfer = _parent_transport;
    return ESP_OK;
}
