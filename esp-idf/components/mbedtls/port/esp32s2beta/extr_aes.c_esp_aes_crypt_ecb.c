
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_aes_context ;


 int esp_aes_acquire_hardware () ;
 int esp_aes_block (unsigned char const*,unsigned char*) ;
 int esp_aes_release_hardware () ;
 int esp_aes_setkey_hardware (int *,int) ;

int esp_aes_crypt_ecb( esp_aes_context *ctx,
                       int mode,
                       const unsigned char input[16],
                       unsigned char output[16] )
{
    esp_aes_acquire_hardware();
    esp_aes_setkey_hardware(ctx, mode);
    esp_aes_block(input, output);
    esp_aes_release_hardware();

    return 0;
}
