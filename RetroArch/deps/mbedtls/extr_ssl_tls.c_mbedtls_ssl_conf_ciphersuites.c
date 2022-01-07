
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const** ciphersuite_list; } ;
typedef TYPE_1__ mbedtls_ssl_config ;


 size_t MBEDTLS_SSL_MINOR_VERSION_0 ;
 size_t MBEDTLS_SSL_MINOR_VERSION_1 ;
 size_t MBEDTLS_SSL_MINOR_VERSION_2 ;
 size_t MBEDTLS_SSL_MINOR_VERSION_3 ;

void mbedtls_ssl_conf_ciphersuites( mbedtls_ssl_config *conf,
                                   const int *ciphersuites )
{
    conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_0] = ciphersuites;
    conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_1] = ciphersuites;
    conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_2] = ciphersuites;
    conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_3] = ciphersuites;
}
