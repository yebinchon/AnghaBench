
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_arc4_context ;


 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 int mbedtls_arc4_setup (int *,unsigned char const*,unsigned int) ;

__attribute__((used)) static int arc4_setkey_wrap( void *ctx, const unsigned char *key,
                             unsigned int key_bitlen )
{

    if( key_bitlen % 8 != 0 )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    mbedtls_arc4_setup( (mbedtls_arc4_context *) ctx, key, key_bitlen / 8 );
    return( 0 );
}
