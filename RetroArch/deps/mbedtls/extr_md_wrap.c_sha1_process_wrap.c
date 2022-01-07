
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha1_context ;


 int mbedtls_sha1_process (int *,unsigned char const*) ;

__attribute__((used)) static void sha1_process_wrap( void *ctx, const unsigned char *data )
{
    mbedtls_sha1_process( (mbedtls_sha1_context *) ctx, data );
}
