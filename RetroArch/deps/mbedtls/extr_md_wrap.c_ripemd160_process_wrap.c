
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ripemd160_context ;


 int mbedtls_ripemd160_process (int *,unsigned char const*) ;

__attribute__((used)) static void ripemd160_process_wrap( void *ctx, const unsigned char *data )
{
    mbedtls_ripemd160_process( (mbedtls_ripemd160_context *) ctx, data );
}
