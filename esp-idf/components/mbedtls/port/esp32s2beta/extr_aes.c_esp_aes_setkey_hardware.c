
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {int key_bytes; int key; } ;
typedef TYPE_1__ esp_aes_context ;


 scalar_t__ AES_KEY_BASE ;
 int AES_MODE_REG ;
 int ESP_AES_ENCRYPT ;
 int REG_WRITE (int ,unsigned int) ;
 int memcpy (unsigned int*,int ,int) ;

__attribute__((used)) static inline void esp_aes_setkey_hardware( esp_aes_context *ctx, int mode)
{
    const uint32_t MODE_DECRYPT_BIT = 4;
    unsigned mode_reg_base = (mode == ESP_AES_ENCRYPT) ? 0 : MODE_DECRYPT_BIT;

    memcpy((uint32_t *)AES_KEY_BASE, ctx->key, ctx->key_bytes);
    REG_WRITE(AES_MODE_REG, mode_reg_base + ((ctx->key_bytes / 8) - 2));
}
