
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int dummy; } ;
struct crypto_private_key {int dummy; } ;


 int pkcs1_v15_private_key_decrypt (struct crypto_rsa_key*,int const*,size_t,int *,size_t*) ;

int crypto_private_key_decrypt_pkcs1_v15(struct crypto_private_key *key,
      const u8 *in, size_t inlen,
      u8 *out, size_t *outlen)
{
 return pkcs1_v15_private_key_decrypt((struct crypto_rsa_key *) key,
          in, inlen, out, outlen);
}
