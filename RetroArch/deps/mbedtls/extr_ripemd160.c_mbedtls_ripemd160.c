
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ripemd160_context ;


 int mbedtls_ripemd160_finish (int *,unsigned char*) ;
 int mbedtls_ripemd160_free (int *) ;
 int mbedtls_ripemd160_init (int *) ;
 int mbedtls_ripemd160_starts (int *) ;
 int mbedtls_ripemd160_update (int *,unsigned char const*,size_t) ;

void mbedtls_ripemd160( const unsigned char *input, size_t ilen,
                unsigned char output[20] )
{
    mbedtls_ripemd160_context ctx;

    mbedtls_ripemd160_init( &ctx );
    mbedtls_ripemd160_starts( &ctx );
    mbedtls_ripemd160_update( &ctx, input, ilen );
    mbedtls_ripemd160_finish( &ctx, output );
    mbedtls_ripemd160_free( &ctx );
}
