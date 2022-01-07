
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ssl_pm {int ssl; } ;
struct TYPE_3__ {scalar_t__ ssl_pm; } ;
typedef TYPE_1__ SSL ;


 int SSL_DEBUG (int ,char*,scalar_t__) ;
 int SSL_PLATFORM_ERROR_LEVEL ;
 long X509_V_ERR_UNSPECIFIED ;
 long X509_V_OK ;
 scalar_t__ mbedtls_ssl_get_verify_result (int *) ;

long ssl_pm_get_verify_result(const SSL *ssl)
{
    uint32_t ret;
    long verify_result;
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    ret = mbedtls_ssl_get_verify_result(&ssl_pm->ssl);
    if (ret) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_get_verify_result() return 0x%x", ret);
        verify_result = X509_V_ERR_UNSPECIFIED;
    } else
        verify_result = X509_V_OK;

    return verify_result;
}
