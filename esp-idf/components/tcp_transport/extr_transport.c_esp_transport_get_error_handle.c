
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
typedef int * esp_tls_error_handle_t ;
struct TYPE_3__ {int * error_handle; } ;



esp_tls_error_handle_t esp_transport_get_error_handle(esp_transport_handle_t t)
{
    if (t) {
        return t->error_handle;
    }
    return ((void*)0);
}
