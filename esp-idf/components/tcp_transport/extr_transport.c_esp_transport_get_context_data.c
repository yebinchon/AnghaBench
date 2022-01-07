
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
struct TYPE_3__ {void* data; } ;



void *esp_transport_get_context_data(esp_transport_handle_t t)
{
    if (t) {
        return t->data;
    }
    return ((void*)0);
}
