
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crypt; int tweak; } ;
typedef TYPE_1__ esp_aes_xts_context ;


 int esp_aes_setkey (int *,unsigned char const*,unsigned int) ;
 int esp_aes_xts_decode_keys (unsigned char const*,unsigned int,unsigned char const**,unsigned int*,unsigned char const**,unsigned int*) ;

int esp_aes_xts_setkey_enc( esp_aes_xts_context *ctx,
                                const unsigned char *key,
                                unsigned int keybits)
{
    int ret;
    const unsigned char *key1, *key2;
    unsigned int key1bits, key2bits;

    ret = esp_aes_xts_decode_keys( key, keybits, &key1, &key1bits,
                                       &key2, &key2bits );
    if( ret != 0 )
        return( ret );


    ret = esp_aes_setkey( &ctx->tweak, key2, key2bits );
    if( ret != 0 )
        return( ret );


    return esp_aes_setkey( &ctx->crypt, key1, key1bits );
}
