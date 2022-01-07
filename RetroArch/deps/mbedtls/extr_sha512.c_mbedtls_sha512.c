
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;


 int mbedtls_sha512_finish (int *,unsigned char*) ;
 int mbedtls_sha512_free (int *) ;
 int mbedtls_sha512_init (int *) ;
 int mbedtls_sha512_starts (int *,int) ;
 int mbedtls_sha512_update (int *,unsigned char const*,size_t) ;

void mbedtls_sha512( const unsigned char *input, size_t ilen,
             unsigned char output[64], int is384 )
{
    mbedtls_sha512_context ctx;

    mbedtls_sha512_init( &ctx );
    mbedtls_sha512_starts( &ctx, is384 );
    mbedtls_sha512_update( &ctx, input, ilen );
    mbedtls_sha512_finish( &ctx, output );
    mbedtls_sha512_free( &ctx );
}
