
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_initialized; int tls; } ;
typedef TYPE_1__ transport_ssl_t ;
typedef int esp_transport_handle_t ;


 int esp_tls_conn_delete (int ) ;
 TYPE_1__* esp_transport_get_context_data (int ) ;

__attribute__((used)) static int ssl_close(esp_transport_handle_t t)
{
    int ret = -1;
    transport_ssl_t *ssl = esp_transport_get_context_data(t);
    if (ssl->ssl_initialized) {
        esp_tls_conn_delete(ssl->tls);
        ssl->ssl_initialized = 0;
    }
    return ret;
}
