
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int P; int len; int GY; int G; } ;
typedef TYPE_1__ mbedtls_dhm_context ;


 int dhm_check_range (int *,int *) ;
 int dhm_read_bignum (int *,unsigned char**,unsigned char const*) ;
 int mbedtls_mpi_size (int *) ;

int mbedtls_dhm_read_params( mbedtls_dhm_context *ctx,
                     unsigned char **p,
                     const unsigned char *end )
{
    int ret;

    if( ( ret = dhm_read_bignum( &ctx->P, p, end ) ) != 0 ||
        ( ret = dhm_read_bignum( &ctx->G, p, end ) ) != 0 ||
        ( ret = dhm_read_bignum( &ctx->GY, p, end ) ) != 0 )
        return( ret );

    if( ( ret = dhm_check_range( &ctx->GY, &ctx->P ) ) != 0 )
        return( ret );

    ctx->len = mbedtls_mpi_size( &ctx->P );

    return( 0 );
}
