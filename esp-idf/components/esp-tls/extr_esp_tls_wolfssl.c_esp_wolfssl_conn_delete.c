
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_tls_t ;


 int esp_wolfssl_cleanup (int *) ;

void esp_wolfssl_conn_delete(esp_tls_t *tls)
{
    if (tls != ((void*)0)) {
        esp_wolfssl_cleanup(tls);
    }
}
