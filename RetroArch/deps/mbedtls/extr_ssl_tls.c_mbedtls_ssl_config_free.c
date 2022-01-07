
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psk_len; int psk_identity_len; int key_cert; struct TYPE_5__* psk_identity; struct TYPE_5__* psk; int dhm_G; int dhm_P; } ;
typedef TYPE_1__ mbedtls_ssl_config ;


 int mbedtls_free (TYPE_1__*) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;
 int ssl_key_cert_free (int ) ;

void mbedtls_ssl_config_free( mbedtls_ssl_config *conf )
{
    mbedtls_zeroize( conf, sizeof( mbedtls_ssl_config ) );
}
