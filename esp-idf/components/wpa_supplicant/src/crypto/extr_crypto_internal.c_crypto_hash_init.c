
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sha256; int sha1; int md5; } ;
struct crypto_hash {int alg; int* key; size_t key_len; TYPE_1__ u; } ;
typedef int k_pad ;
typedef enum crypto_hash_alg { ____Placeholder_crypto_hash_alg } crypto_hash_alg ;
 int MD5Final (int*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int const*,int) ;
 int SHA1Final (int*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int const*,int) ;
 int mbedtls_sha256_finish (int *,int*) ;
 int mbedtls_sha256_free (int *) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts (int *,int ) ;
 int mbedtls_sha256_update (int *,int const*,int) ;
 int os_free (struct crypto_hash*) ;
 int os_memcpy (int*,int const*,size_t) ;
 int os_memset (int*,int ,int) ;
 scalar_t__ os_zalloc (int) ;
 int sha256_done (int *,int*) ;
 int sha256_init (int *) ;
 int sha256_process (int *,int const*,int) ;

struct crypto_hash * crypto_hash_init(enum crypto_hash_alg alg, const u8 *key,
          size_t key_len)
{
 struct crypto_hash *ctx;
 u8 k_pad[64];
 u8 tk[32];
 size_t i;

 ctx = (struct crypto_hash *)os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);

 ctx->alg = alg;

 switch (alg) {
 case 130:
  MD5Init(&ctx->u.md5);
  break;
 case 129:
  SHA1Init(&ctx->u.sha1);
  break;
 case 133:
  if (key_len > sizeof(k_pad)) {
   MD5Init(&ctx->u.md5);
   MD5Update(&ctx->u.md5, key, key_len);
   MD5Final(tk, &ctx->u.md5);
   key = tk;
   key_len = 16;
  }
  os_memcpy(ctx->key, key, key_len);
  ctx->key_len = key_len;

  os_memcpy(k_pad, key, key_len);
  if (key_len < sizeof(k_pad))
   os_memset(k_pad + key_len, 0, sizeof(k_pad) - key_len);
  for (i = 0; i < sizeof(k_pad); i++)
   k_pad[i] ^= 0x36;
  MD5Init(&ctx->u.md5);
  MD5Update(&ctx->u.md5, k_pad, sizeof(k_pad));
  break;
 case 132:
  if (key_len > sizeof(k_pad)) {
   SHA1Init(&ctx->u.sha1);
   SHA1Update(&ctx->u.sha1, key, key_len);
   SHA1Final(tk, &ctx->u.sha1);
   key = tk;
   key_len = 20;
  }
  os_memcpy(ctx->key, key, key_len);
  ctx->key_len = key_len;

  os_memcpy(k_pad, key, key_len);
  if (key_len < sizeof(k_pad))
   os_memset(k_pad + key_len, 0, sizeof(k_pad) - key_len);
  for (i = 0; i < sizeof(k_pad); i++)
   k_pad[i] ^= 0x36;
  SHA1Init(&ctx->u.sha1);
  SHA1Update(&ctx->u.sha1, k_pad, sizeof(k_pad));
  break;
 default:
  os_free(ctx);
  return ((void*)0);
 }

 return ctx;
}
