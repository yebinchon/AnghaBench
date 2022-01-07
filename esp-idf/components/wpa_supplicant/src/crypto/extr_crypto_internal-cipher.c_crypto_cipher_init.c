
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int cbc; int dk; int ek; } ;
struct TYPE_8__ {int cbc; int key; } ;
struct TYPE_7__ {int cbc; int * ctx_enc; int * ctx_dec; } ;
struct TYPE_6__ {size_t keylen; int key; } ;
struct TYPE_10__ {TYPE_4__ des; TYPE_3__ des3; TYPE_2__ aes; TYPE_1__ rc4; } ;
struct crypto_cipher {int alg; TYPE_5__ u; } ;
typedef enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;


 int AES_BLOCK_SIZE ;




 int * aes_decrypt_init (int const*,size_t) ;
 int aes_encrypt_deinit (int *) ;
 int * aes_encrypt_init (int const*,size_t) ;
 int des3_key_setup (int const*,int *) ;
 int des_key_setup (int const*,int ,int ) ;
 int mbedtls_aes_init (int **) ;
 int mbedtls_aes_setkey_dec (int **,int const*,size_t) ;
 int mbedtls_aes_setkey_enc (int **,int const*,size_t) ;
 int os_free (struct crypto_cipher*) ;
 int os_memcpy (int ,int const*,int) ;
 scalar_t__ os_zalloc (int) ;

struct crypto_cipher * crypto_cipher_init(enum crypto_cipher_alg alg,
       const u8 *iv, const u8 *key,
       size_t key_len)
{
 struct crypto_cipher *ctx;

 ctx = (struct crypto_cipher *)os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);

 ctx->alg = alg;

 switch (alg) {
 case 128:
  if (key_len > sizeof(ctx->u.rc4.key)) {
   os_free(ctx);
   return ((void*)0);
  }
  ctx->u.rc4.keylen = key_len;
  os_memcpy(ctx->u.rc4.key, key, key_len);
  break;
 case 130:






  ctx->u.aes.ctx_enc = aes_encrypt_init(key, key_len);
  if (ctx->u.aes.ctx_enc == ((void*)0)) {
   os_free(ctx);
   return ((void*)0);
  }
  ctx->u.aes.ctx_dec = aes_decrypt_init(key, key_len);
  if (ctx->u.aes.ctx_dec == ((void*)0)) {
   aes_encrypt_deinit(ctx->u.aes.ctx_enc);
   os_free(ctx);
   return ((void*)0);
  }

  os_memcpy(ctx->u.aes.cbc, iv, AES_BLOCK_SIZE);
  break;
 default:
  os_free(ctx);
  return ((void*)0);
 }

 return ctx;
}
