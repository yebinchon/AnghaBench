
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct x509_pm {int * ex_crt; } ;
struct ssl_pm {int ssl; } ;
struct TYPE_7__ {TYPE_2__* session; scalar_t__ ssl_pm; } ;
struct TYPE_6__ {TYPE_1__* peer; } ;
struct TYPE_5__ {scalar_t__ x509_pm; } ;
typedef TYPE_3__ SSL ;


 int SSL_DEBUG (int ,char*,int) ;
 int SSL_PLATFORM_ERROR_LEVEL ;
 int mbedtls_ssl_close_notify (int *) ;

int ssl_pm_shutdown(SSL *ssl)
{
    int ret;
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    ret = mbedtls_ssl_close_notify(&ssl_pm->ssl);
    if (ret) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_close_notify() return -0x%x", -ret);
        ret = -1;
    } else {
        struct x509_pm *x509_pm = (struct x509_pm *)ssl->session->peer->x509_pm;

        x509_pm->ex_crt = ((void*)0);
    }

    return ret;
}
