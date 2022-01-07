
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_x509_crt ;
typedef int mbedtls_x509_crl ;
struct TYPE_3__ {int * ca_crl; int * ca_chain; } ;
typedef TYPE_1__ mbedtls_ssl_config ;



void mbedtls_ssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl )
{
    conf->ca_chain = ca_chain;
    conf->ca_crl = ca_crl;
}
