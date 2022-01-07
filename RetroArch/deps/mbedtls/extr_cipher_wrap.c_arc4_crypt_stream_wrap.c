
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_arc4_context ;


 int mbedtls_arc4_crypt (int *,size_t,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int arc4_crypt_stream_wrap( void *ctx, size_t length,
                                   const unsigned char *input,
                                   unsigned char *output )
{
    return( mbedtls_arc4_crypt( (mbedtls_arc4_context *) ctx, length, input, output ) );
}
