
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl; int ctr_drbg; int conf; int entropy; int clientkey; int clientcert; int cacert; int serverkey; int servercert; int * cacert_ptr; } ;
typedef TYPE_1__ esp_tls_t ;


 int * global_cacert ;
 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_pk_free (int *) ;
 int mbedtls_ssl_config_free (int *) ;
 int mbedtls_ssl_free (int *) ;
 int mbedtls_x509_crt_free (int *) ;

void esp_mbedtls_cleanup(esp_tls_t *tls)
{
    if (!tls) {
        return;
    }
    if (tls->cacert_ptr != global_cacert) {
        mbedtls_x509_crt_free(tls->cacert_ptr);
    }
    tls->cacert_ptr = ((void*)0);




    mbedtls_x509_crt_free(&tls->cacert);
    mbedtls_x509_crt_free(&tls->clientcert);
    mbedtls_pk_free(&tls->clientkey);
    mbedtls_entropy_free(&tls->entropy);
    mbedtls_ssl_config_free(&tls->conf);
    mbedtls_ctr_drbg_free(&tls->ctr_drbg);
    mbedtls_ssl_free(&tls->ssl);
}
