
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ priv_ctx; scalar_t__ priv_ssl; } ;
typedef TYPE_1__ esp_tls_t ;
typedef int WOLFSSL_CTX ;
typedef int WOLFSSL ;


 int wolfSSL_CTX_free (int *) ;
 int wolfSSL_Cleanup () ;
 int wolfSSL_free (int *) ;
 int wolfSSL_shutdown (int *) ;

void esp_wolfssl_cleanup(esp_tls_t *tls)
{
    if (!tls) {
        return;
    }
    wolfSSL_shutdown( (WOLFSSL *)tls->priv_ssl);
    wolfSSL_free( (WOLFSSL *)tls->priv_ssl);
    wolfSSL_CTX_free( (WOLFSSL_CTX *)tls->priv_ctx);
    wolfSSL_Cleanup();
}
