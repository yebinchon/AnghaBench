
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int serial; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;
typedef int mbedtls_mpi ;


 int mbedtls_mpi_copy (int *,int const*) ;

int mbedtls_x509write_crt_set_serial( mbedtls_x509write_cert *ctx, const mbedtls_mpi *serial )
{
    int ret;

    if( ( ret = mbedtls_mpi_copy( &ctx->serial, serial ) ) != 0 )
        return( ret );

    return( 0 );
}
