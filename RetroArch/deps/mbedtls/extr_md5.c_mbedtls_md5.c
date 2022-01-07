
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;


 int mbedtls_md5_finish (int *,unsigned char*) ;
 int mbedtls_md5_free (int *) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_md5_starts (int *) ;
 int mbedtls_md5_update (int *,unsigned char const*,size_t) ;

void mbedtls_md5( const unsigned char *input, size_t ilen, unsigned char output[16] )
{
    mbedtls_md5_context ctx;

    mbedtls_md5_init( &ctx );
    mbedtls_md5_starts( &ctx );
    mbedtls_md5_update( &ctx, input, ilen );
    mbedtls_md5_finish( &ctx, output );
    mbedtls_md5_free( &ctx );
}
