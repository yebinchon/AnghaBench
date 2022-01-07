
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;


 int mbedtls_sha512_finish (int *,unsigned char*) ;

__attribute__((used)) static void sha384_finish_wrap( void *ctx, unsigned char *output )
{
    mbedtls_sha512_finish( (mbedtls_sha512_context *) ctx, output );
}
