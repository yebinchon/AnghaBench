
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssl_pm {int ssl; } ;
struct TYPE_3__ {scalar_t__ ssl_pm; } ;
typedef TYPE_1__ SSL ;


 int mbedtls_ssl_set_hostname (int *,char const*) ;

void ssl_pm_set_hostname(SSL *ssl, const char *hostname)
{
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    mbedtls_ssl_set_hostname(&ssl_pm->ssl, hostname);
}
