
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server_fd; scalar_t__ is_tls; } ;
typedef TYPE_1__ esp_tls_t ;


 int esp_mbedtls_cleanup (TYPE_1__*) ;
 int mbedtls_net_free (int *) ;

void esp_mbedtls_conn_delete(esp_tls_t *tls)
{
    if (tls != ((void*)0)) {
        esp_mbedtls_cleanup(tls);
        if (tls->is_tls) {
            mbedtls_net_free(&tls->server_fd);
        }
    }
}
