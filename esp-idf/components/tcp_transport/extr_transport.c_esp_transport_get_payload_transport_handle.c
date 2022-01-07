
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
struct TYPE_6__ {TYPE_1__* (* _parent_transfer ) (TYPE_1__*) ;scalar_t__ _read; } ;


 TYPE_1__* stub1 (TYPE_1__*) ;

esp_transport_handle_t esp_transport_get_payload_transport_handle(esp_transport_handle_t t)
{
    if (t && t->_read) {
        return t->_parent_transfer(t);
    }
    return ((void*)0);
}
