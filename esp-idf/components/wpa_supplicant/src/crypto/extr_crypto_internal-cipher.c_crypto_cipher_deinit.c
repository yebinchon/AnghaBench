
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx_dec; int ctx_enc; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct crypto_cipher {int alg; TYPE_2__ u; } ;




 int aes_decrypt_deinit (int ) ;
 int aes_encrypt_deinit (int ) ;
 int mbedtls_aes_free (int *) ;
 int os_free (struct crypto_cipher*) ;

void crypto_cipher_deinit(struct crypto_cipher *ctx)
{
 switch (ctx->alg) {
 case 128:




  aes_encrypt_deinit(ctx->u.aes.ctx_enc);
  aes_decrypt_deinit(ctx->u.aes.ctx_dec);

  break;




 default:
  break;
 }
 os_free(ctx);
}
