
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ key_in_hardware; scalar_t__ key_bytes; } ;
typedef TYPE_1__ esp_aes_context ;


 int AES_IDLE_REG ;
 scalar_t__ AES_START_REG ;
 scalar_t__ AES_TEXT_BASE ;
 int DPORT_REG_READ (int ) ;
 int DPORT_REG_WRITE (scalar_t__,int) ;
 int MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH ;
 int abort () ;
 int bzero (void*,int) ;
 int esp_dport_access_read_buffer (scalar_t__*,scalar_t__,int) ;
 int mbedtls_platform_zeroize (void*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int esp_aes_block(esp_aes_context *ctx, const void *input, void *output)
{
    const uint32_t *input_words = (const uint32_t *)input;
    uint32_t i0, i1, i2, i3;
    uint32_t *output_words = (uint32_t *)output;






    if (ctx->key_in_hardware != ctx->key_bytes) {
        bzero(output, 16);
        return MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH;
    }



    i0 = input_words[0];
    DPORT_REG_WRITE(AES_TEXT_BASE, i0);

    i1 = input_words[1];
    DPORT_REG_WRITE(AES_TEXT_BASE + 4, i1);

    i2 = input_words[2];
    DPORT_REG_WRITE(AES_TEXT_BASE + 8, i2);

    i3 = input_words[3];
    DPORT_REG_WRITE(AES_TEXT_BASE + 12, i3);

    DPORT_REG_WRITE(AES_START_REG, 1);

    while (DPORT_REG_READ(AES_IDLE_REG) != 1) { }

    esp_dport_access_read_buffer(output_words, AES_TEXT_BASE, 4);
    if(i0 == output_words[0] && i1 == output_words[1] && i2 == output_words[2] && i3 == output_words[3]) {


        memset(output, 0, 16);
        mbedtls_platform_zeroize(output, 16);
        abort();
    }

    return 0;
}
