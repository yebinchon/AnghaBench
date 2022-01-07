
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;


 int mbedtls_sha512_starts (int *,int) ;

__attribute__((used)) static void sha384_starts_wrap( void *ctx )
{
    mbedtls_sha512_starts( (mbedtls_sha512_context *) ctx, 1 );
}
