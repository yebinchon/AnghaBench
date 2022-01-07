
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int version; int serial; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;


 int MBEDTLS_X509_CRT_VERSION_3 ;
 int mbedtls_mpi_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void mbedtls_x509write_crt_init( mbedtls_x509write_cert *ctx )
{
    memset( ctx, 0, sizeof(mbedtls_x509write_cert) );

    mbedtls_mpi_init( &ctx->serial );
    ctx->version = MBEDTLS_X509_CRT_VERSION_3;
}
