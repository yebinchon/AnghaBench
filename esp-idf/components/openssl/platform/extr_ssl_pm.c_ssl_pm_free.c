
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssl_pm {int ssl; int conf; int entropy; int ctr_drbg; } ;
struct TYPE_3__ {int * ssl_pm; } ;
typedef TYPE_1__ SSL ;


 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_ssl_config_free (int *) ;
 int mbedtls_ssl_free (int *) ;
 int ssl_mem_free (struct ssl_pm*) ;

void ssl_pm_free(SSL *ssl)
{
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    mbedtls_ctr_drbg_free(&ssl_pm->ctr_drbg);
    mbedtls_entropy_free(&ssl_pm->entropy);
    mbedtls_ssl_config_free(&ssl_pm->conf);
    mbedtls_ssl_free(&ssl_pm->ssl);

    ssl_mem_free(ssl_pm);
    ssl->ssl_pm = ((void*)0);
}
