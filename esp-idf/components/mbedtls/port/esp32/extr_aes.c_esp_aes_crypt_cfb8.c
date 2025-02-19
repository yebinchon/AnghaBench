
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ key_in_hardware; } ;
typedef TYPE_1__ esp_aes_context ;


 int ESP_AES_DECRYPT ;
 int ESP_AES_ENCRYPT ;
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ;
 int esp_aes_acquire_hardware () ;
 int esp_aes_block (TYPE_1__*,unsigned char*,unsigned char*) ;
 int esp_aes_release_hardware () ;
 int esp_aes_setkey_hardware (TYPE_1__*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int valid_key_length (TYPE_1__*) ;

int esp_aes_crypt_cfb8( esp_aes_context *ctx,
                        int mode,
                        size_t length,
                        unsigned char iv[16],
                        const unsigned char *input,
                        unsigned char *output )
{
    unsigned char c;
    unsigned char ov[17];

    if (!valid_key_length(ctx)) {
        return MBEDTLS_ERR_AES_INVALID_KEY_LENGTH;
    }

    esp_aes_acquire_hardware();
    ctx->key_in_hardware = 0;

    esp_aes_setkey_hardware(ctx, ESP_AES_ENCRYPT);

    while ( length-- ) {
        memcpy( ov, iv, 16 );
        esp_aes_block(ctx, iv, iv);

        if ( mode == ESP_AES_DECRYPT ) {
            ov[16] = *input;
        }

        c = *output++ = (unsigned char)( iv[0] ^ *input++ );

        if ( mode == ESP_AES_ENCRYPT ) {
            ov[16] = c;
        }

        memcpy( iv, ov + 1, 16 );
    }

    esp_aes_release_hardware();

    return 0;
}
