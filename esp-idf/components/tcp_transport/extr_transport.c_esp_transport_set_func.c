
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* trans_func ;
typedef void* poll_func ;
typedef int io_read_func ;
typedef int io_func ;
typedef TYPE_1__* esp_transport_handle_t ;
typedef int esp_err_t ;
typedef int connect_func ;
struct TYPE_3__ {int _parent_transfer; int * _connect_async; void* _destroy; void* _poll_write; void* _poll_read; void* _close; int _write; int _read; int _connect; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int esp_transport_get_default_parent ;

esp_err_t esp_transport_set_func(esp_transport_handle_t t,
                             connect_func _connect,
                             io_read_func _read,
                             io_func _write,
                             trans_func _close,
                             poll_func _poll_read,
                             poll_func _poll_write,
                             trans_func _destroy)
{
    if (t == ((void*)0)) {
        return ESP_FAIL;
    }
    t->_connect = _connect;
    t->_read = _read;
    t->_write = _write;
    t->_close = _close;
    t->_poll_read = _poll_read;
    t->_poll_write = _poll_write;
    t->_destroy = _destroy;
    t->_connect_async = ((void*)0);
    t->_parent_transfer = esp_transport_get_default_parent;
    return ESP_OK;
}
