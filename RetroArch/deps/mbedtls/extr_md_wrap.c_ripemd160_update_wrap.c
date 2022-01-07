
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ripemd160_context ;


 int mbedtls_ripemd160_update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void ripemd160_update_wrap( void *ctx, const unsigned char *input,
                                   size_t ilen )
{
    mbedtls_ripemd160_update( (mbedtls_ripemd160_context *) ctx, input, ilen );
}
