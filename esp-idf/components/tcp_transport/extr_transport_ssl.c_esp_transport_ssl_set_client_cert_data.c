
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clientcert_pem_bytes; void* clientcert_pem_buf; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ transport_ssl_t ;
typedef scalar_t__ esp_transport_handle_t ;


 TYPE_2__* esp_transport_get_context_data (scalar_t__) ;

void esp_transport_ssl_set_client_cert_data(esp_transport_handle_t t, const char *data, int len)
{
    transport_ssl_t *ssl = esp_transport_get_context_data(t);
    if (t && ssl) {
        ssl->cfg.clientcert_pem_buf = (void *)data;
        ssl->cfg.clientcert_pem_bytes = len + 1;
    }
}
