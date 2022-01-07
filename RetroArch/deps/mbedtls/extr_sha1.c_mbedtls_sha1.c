
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha1_context ;


 int mbedtls_sha1_finish (int *,unsigned char*) ;
 int mbedtls_sha1_free (int *) ;
 int mbedtls_sha1_init (int *) ;
 int mbedtls_sha1_starts (int *) ;
 int mbedtls_sha1_update (int *,unsigned char const*,size_t) ;

void mbedtls_sha1( const unsigned char *input, size_t ilen, unsigned char output[20] )
{
    mbedtls_sha1_context ctx;

    mbedtls_sha1_init( &ctx );
    mbedtls_sha1_starts( &ctx );
    mbedtls_sha1_update( &ctx, input, ilen );
    mbedtls_sha1_finish( &ctx, output );
    mbedtls_sha1_free( &ctx );
}
