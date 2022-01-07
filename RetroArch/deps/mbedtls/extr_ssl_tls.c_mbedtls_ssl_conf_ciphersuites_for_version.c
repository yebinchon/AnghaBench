
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const** ciphersuite_list; } ;
typedef TYPE_1__ mbedtls_ssl_config ;


 int MBEDTLS_SSL_MAJOR_VERSION_3 ;
 int MBEDTLS_SSL_MINOR_VERSION_0 ;
 int MBEDTLS_SSL_MINOR_VERSION_3 ;

void mbedtls_ssl_conf_ciphersuites_for_version( mbedtls_ssl_config *conf,
                                       const int *ciphersuites,
                                       int major, int minor )
{
    if( major != MBEDTLS_SSL_MAJOR_VERSION_3 )
        return;

    if( minor < MBEDTLS_SSL_MINOR_VERSION_0 || minor > MBEDTLS_SSL_MINOR_VERSION_3 )
        return;

    conf->ciphersuite_list[minor] = ciphersuites;
}
