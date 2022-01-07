
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha256_context ;


 int mbedtls_sha256_finish (int *,unsigned char*) ;
 int mbedtls_sha256_free (int *) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts (int *,int) ;
 int mbedtls_sha256_update (int *,unsigned char const*,size_t) ;

void mbedtls_sha256( const unsigned char *input, size_t ilen,
             unsigned char output[32], int is224 )
{
    mbedtls_sha256_context ctx;

    mbedtls_sha256_init( &ctx );
    mbedtls_sha256_starts( &ctx, is224 );
    mbedtls_sha256_update( &ctx, input, ilen );
    mbedtls_sha256_finish( &ctx, output );
    mbedtls_sha256_free( &ctx );
}
