
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ripemd160_context ;


 int mbedtls_ripemd160_starts (int *) ;

__attribute__((used)) static void ripemd160_starts_wrap( void *ctx )
{
    mbedtls_ripemd160_starts( (mbedtls_ripemd160_context *) ctx );
}
