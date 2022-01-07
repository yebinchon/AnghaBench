
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_bytes; } ;
typedef TYPE_1__ esp_aes_context ;



__attribute__((used)) static inline bool valid_key_length(const esp_aes_context *ctx)
{
    return ctx->key_bytes == 128/8 || ctx->key_bytes == 192/8 || ctx->key_bytes == 256/8;
}
