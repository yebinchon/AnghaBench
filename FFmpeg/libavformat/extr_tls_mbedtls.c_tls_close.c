
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int entropy_context; int ctr_drbg_context; int ssl_config; int ssl_context; int own_cert; int ca_cert; int priv_key; } ;
typedef TYPE_2__ TLSContext ;


 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_pk_free (int *) ;
 int mbedtls_ssl_close_notify (int *) ;
 int mbedtls_ssl_config_free (int *) ;
 int mbedtls_ssl_free (int *) ;
 int mbedtls_x509_crt_free (int *) ;

__attribute__((used)) static int tls_close(URLContext *h)
{
    TLSContext *tls_ctx = h->priv_data;

    mbedtls_ssl_close_notify(&tls_ctx->ssl_context);
    mbedtls_pk_free(&tls_ctx->priv_key);
    mbedtls_x509_crt_free(&tls_ctx->ca_cert);
    mbedtls_x509_crt_free(&tls_ctx->own_cert);
    mbedtls_ssl_free(&tls_ctx->ssl_context);
    mbedtls_ssl_config_free(&tls_ctx->ssl_config);
    mbedtls_ctr_drbg_free(&tls_ctx->ctr_drbg_context);
    mbedtls_entropy_free(&tls_ctx->entropy_context);

    return 0;
}
