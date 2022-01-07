
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_aes_context ;


 int ESP_AES_ENCRYPT ;
 int MBEDTLS_ERR_AES_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ;
 int esp_aes_acquire_hardware () ;
 int esp_aes_block (int *,unsigned char*,unsigned char*) ;
 int esp_aes_release_hardware () ;
 int esp_aes_setkey_hardware (int *,int ) ;
 int valid_key_length (int *) ;

int esp_aes_crypt_ofb( esp_aes_context *ctx,
                           size_t length,
                           size_t *iv_off,
                           unsigned char iv[16],
                           const unsigned char *input,
                           unsigned char *output )
{
    int ret = 0;
    size_t n;

    if ( ctx == ((void*)0) || iv_off == ((void*)0) || iv == ((void*)0) ||
        input == ((void*)0) || output == ((void*)0) ) {
            return MBEDTLS_ERR_AES_BAD_INPUT_DATA;
    }

    n = *iv_off;

    if( n > 15 ) {
        return( MBEDTLS_ERR_AES_BAD_INPUT_DATA );
    }

    if (!valid_key_length(ctx)) {
        return MBEDTLS_ERR_AES_INVALID_KEY_LENGTH;
    }

    esp_aes_acquire_hardware();

    esp_aes_setkey_hardware(ctx, ESP_AES_ENCRYPT);

    while( length-- ) {
        if( n == 0 ) {
            esp_aes_block(ctx, iv, iv);
        }
        *output++ = *input++ ^ iv[n];

        n = ( n + 1 ) & 0x0F;
    }

    *iv_off = n;

    esp_aes_release_hardware();

    return( ret );
}
