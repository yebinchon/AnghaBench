
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssl_pm {int ssl; } ;
struct TYPE_3__ {scalar_t__ ssl_pm; } ;
typedef TYPE_1__ SSL ;


 int SSL_DEBUG (int ,char*,int) ;
 int SSL_PLATFORM_ERROR_LEVEL ;
 int mbedtls_ssl_write (int *,void const*,int) ;

int ssl_pm_send(SSL *ssl, const void *buffer, int len)
{
    int ret;
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    ret = mbedtls_ssl_write(&ssl_pm->ssl, buffer, len);
    if (ret < 0) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_write() return -0x%x", -ret);
        ret = -1;
    }

    return ret;
}
