
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;


 int mbedtls_sha512_update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void sha384_update_wrap( void *ctx, const unsigned char *input,
                                size_t ilen )
{
    mbedtls_sha512_update( (mbedtls_sha512_context *) ctx, input, ilen );
}
