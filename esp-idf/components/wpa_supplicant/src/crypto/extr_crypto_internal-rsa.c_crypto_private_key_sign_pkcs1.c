
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int dummy; } ;
struct crypto_private_key {int dummy; } ;


 int pkcs1_encrypt (int,struct crypto_rsa_key*,int,int const*,size_t,int *,size_t*) ;

int crypto_private_key_sign_pkcs1(struct crypto_private_key *key,
      const u8 *in, size_t inlen,
      u8 *out, size_t *outlen)
{
 return pkcs1_encrypt(1, (struct crypto_rsa_key *) key,
        1, in, inlen, out, outlen);
}
