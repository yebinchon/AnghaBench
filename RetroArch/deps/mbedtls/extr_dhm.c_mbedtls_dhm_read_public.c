
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int GY; } ;
typedef TYPE_1__ mbedtls_dhm_context ;


 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_DHM_READ_PUBLIC_FAILED ;
 int mbedtls_mpi_read_binary (int *,unsigned char const*,size_t) ;

int mbedtls_dhm_read_public( mbedtls_dhm_context *ctx,
                     const unsigned char *input, size_t ilen )
{
    int ret;

    if( ctx == ((void*)0) || ilen < 1 || ilen > ctx->len )
        return( MBEDTLS_ERR_DHM_BAD_INPUT_DATA );

    if( ( ret = mbedtls_mpi_read_binary( &ctx->GY, input, ilen ) ) != 0 )
        return( MBEDTLS_ERR_DHM_READ_PUBLIC_FAILED + ret );

    return( 0 );
}
