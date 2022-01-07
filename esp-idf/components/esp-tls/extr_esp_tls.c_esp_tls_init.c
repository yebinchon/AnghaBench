
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {int sockfd; TYPE_1__ server_fd; scalar_t__ error_handle; } ;
typedef TYPE_2__ esp_tls_t ;
typedef int esp_tls_last_error_t ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_2__*) ;

esp_tls_t *esp_tls_init(void)
{
    esp_tls_t *tls = (esp_tls_t *)calloc(1, sizeof(esp_tls_t));
    if (!tls) {
        return ((void*)0);
    }
    tls->error_handle = calloc(1, sizeof(esp_tls_last_error_t));
    if (!tls->error_handle) {
        free(tls);
        return ((void*)0);
    }



    return tls;
}
