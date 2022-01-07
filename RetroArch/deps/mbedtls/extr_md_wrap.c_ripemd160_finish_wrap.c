
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ripemd160_context ;


 int mbedtls_ripemd160_finish (int *,unsigned char*) ;

__attribute__((used)) static void ripemd160_finish_wrap( void *ctx, unsigned char *output )
{
    mbedtls_ripemd160_finish( (mbedtls_ripemd160_context *) ctx, output );
}
