
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sockfd; struct TYPE_5__* error_handle; } ;
typedef TYPE_1__ esp_tls_t ;


 int _esp_tls_conn_delete (TYPE_1__*) ;
 int close (scalar_t__) ;
 int free (TYPE_1__*) ;

void esp_tls_conn_delete(esp_tls_t *tls)
{
    if (tls != ((void*)0)) {
        _esp_tls_conn_delete(tls);
        if (tls->sockfd >= 0) {
            close(tls->sockfd);
        }
    free(tls->error_handle);
    free(tls);
    }
}
