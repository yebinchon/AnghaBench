
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
typedef int esp_tls_last_error_t ;
typedef int esp_tls_error_handle_t ;
struct TYPE_3__ {int error_handle; } ;


 int memcpy (int ,int const,int) ;

void esp_transport_set_errors(esp_transport_handle_t t, const esp_tls_error_handle_t error_handle)
{
    if (t) {
        memcpy(t->error_handle, error_handle, sizeof(esp_tls_last_error_t));
    }
}
