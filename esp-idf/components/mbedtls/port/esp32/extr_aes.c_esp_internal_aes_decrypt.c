
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ key_in_hardware; } ;
typedef TYPE_1__ esp_aes_context ;


 int ESP_AES_DECRYPT ;
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ;
 int esp_aes_acquire_hardware () ;
 int esp_aes_block (TYPE_1__*,unsigned char const*,unsigned char*) ;
 int esp_aes_release_hardware () ;
 int esp_aes_setkey_hardware (TYPE_1__*,int ) ;
 int valid_key_length (TYPE_1__*) ;

int esp_internal_aes_decrypt( esp_aes_context *ctx,
                      const unsigned char input[16],
                      unsigned char output[16] )
{
    int r;

    if (!valid_key_length(ctx)) {
        return MBEDTLS_ERR_AES_INVALID_KEY_LENGTH;
    }

    esp_aes_acquire_hardware();
    ctx->key_in_hardware = 0;
    esp_aes_setkey_hardware(ctx, ESP_AES_DECRYPT);
    r = esp_aes_block(ctx, input, output);
    esp_aes_release_hardware();
    return r;
}
