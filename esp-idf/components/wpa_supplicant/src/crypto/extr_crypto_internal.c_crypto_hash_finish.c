
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sha256; int sha1; int md5; } ;
struct crypto_hash {int alg; TYPE_1__ u; int key_len; int key; } ;
typedef int k_pad ;
 int MD5Final (int*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int*,int) ;
 int SHA1Final (int*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int*,int) ;
 int mbedtls_sha256_finish (int *,int*) ;
 int mbedtls_sha256_free (int *) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts (int *,int ) ;
 int mbedtls_sha256_update (int *,int*,int) ;
 int os_free (struct crypto_hash*) ;
 int os_memcpy (int*,int ,int ) ;
 int os_memset (int*,int ,int ) ;
 int sha256_done (int *,int*) ;
 int sha256_init (int *) ;
 int sha256_process (int *,int*,int) ;

int crypto_hash_finish(struct crypto_hash *ctx, u8 *mac, size_t *len)
{
 u8 k_pad[64];
 size_t i;

 if (ctx == ((void*)0))
  return -2;

 if (mac == ((void*)0) || len == ((void*)0)) {
  os_free(ctx);
  return 0;
 }

 switch (ctx->alg) {
 case 130:
  if (*len < 16) {
   *len = 16;
   os_free(ctx);
   return -1;
  }
  *len = 16;
  MD5Final(mac, &ctx->u.md5);
  break;
 case 129:
  if (*len < 20) {
   *len = 20;
   os_free(ctx);
   return -1;
  }
  *len = 20;
  SHA1Final(mac, &ctx->u.sha1);
  break;
 case 133:
  if (*len < 16) {
   *len = 16;
   os_free(ctx);
   return -1;
  }
  *len = 16;

  MD5Final(mac, &ctx->u.md5);

  os_memcpy(k_pad, ctx->key, ctx->key_len);
  os_memset(k_pad + ctx->key_len, 0,
     sizeof(k_pad) - ctx->key_len);
  for (i = 0; i < sizeof(k_pad); i++)
   k_pad[i] ^= 0x5c;
  MD5Init(&ctx->u.md5);
  MD5Update(&ctx->u.md5, k_pad, sizeof(k_pad));
  MD5Update(&ctx->u.md5, mac, 16);
  MD5Final(mac, &ctx->u.md5);
  break;
 case 132:
  if (*len < 20) {
   *len = 20;
   os_free(ctx);
   return -1;
  }
  *len = 20;

  SHA1Final(mac, &ctx->u.sha1);

  os_memcpy(k_pad, ctx->key, ctx->key_len);
  os_memset(k_pad + ctx->key_len, 0,
     sizeof(k_pad) - ctx->key_len);
  for (i = 0; i < sizeof(k_pad); i++)
   k_pad[i] ^= 0x5c;
  SHA1Init(&ctx->u.sha1);
  SHA1Update(&ctx->u.sha1, k_pad, sizeof(k_pad));
  SHA1Update(&ctx->u.sha1, mac, 20);
  SHA1Final(mac, &ctx->u.sha1);
  break;
 default:
  os_free(ctx);
  return -1;
 }

 os_free(ctx);

 return 0;
}
