
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
struct TYPE_3__ {int port; } ;



int esp_transport_get_default_port(esp_transport_handle_t t)
{
    if (t == ((void*)0)) {
        return -1;
    }
    return t->port;
}
