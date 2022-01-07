
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int n; int e; int q; int p; int iqmp; int dmq1; int dmp1; int private_key; } ;
struct bignum {int dummy; } ;


 scalar_t__ bignum_add (struct bignum*,struct bignum*,struct bignum*) ;
 scalar_t__ bignum_cmp (int ,struct bignum*) ;
 int bignum_deinit (struct bignum*) ;
 scalar_t__ bignum_exptmod (struct bignum*,int ,int ,struct bignum*) ;
 scalar_t__ bignum_get_unsigned_bin (struct bignum*,int *,int *) ;
 size_t bignum_get_unsigned_bin_len (struct bignum*) ;
 struct bignum* bignum_init () ;
 scalar_t__ bignum_mul (struct bignum*,int ,struct bignum*) ;
 scalar_t__ bignum_mulmod (struct bignum*,int ,int ,struct bignum*) ;
 scalar_t__ bignum_set_unsigned_bin (struct bignum*,int const*,size_t) ;
 scalar_t__ bignum_sub (struct bignum*,struct bignum*,struct bignum*) ;
 size_t crypto_rsa_get_modulus_len (struct crypto_rsa_key*) ;
 int os_memset (int *,int ,size_t) ;

int crypto_rsa_exptmod(const u8 *in, size_t inlen, u8 *out, size_t *outlen,
         struct crypto_rsa_key *key, int use_private)
{
 struct bignum *tmp, *a = ((void*)0), *b = ((void*)0);
 int ret = -1;
 size_t modlen;

 if (use_private && !key->private_key)
  return -1;

 tmp = bignum_init();
 if (tmp == ((void*)0))
  return -1;

 if (bignum_set_unsigned_bin(tmp, in, inlen) < 0)
  goto error;
 if (bignum_cmp(key->n, tmp) < 0) {

  goto error;
 }

 if (use_private) {
  a = bignum_init();
  b = bignum_init();
  if (a == ((void*)0) || b == ((void*)0))
   goto error;


  if (bignum_exptmod(tmp, key->dmp1, key->p, a) < 0)
   goto error;


  if (bignum_exptmod(tmp, key->dmq1, key->q, b) < 0)
   goto error;


  if (bignum_sub(a, b, tmp) < 0 ||
      bignum_mulmod(tmp, key->iqmp, key->p, tmp) < 0)
   goto error;


  if (bignum_mul(tmp, key->q, tmp) < 0 ||
      bignum_add(tmp, b, tmp) < 0)
   goto error;
 } else {


  if (bignum_exptmod(tmp, key->e, key->n, tmp) < 0)
   goto error;
 }

 modlen = crypto_rsa_get_modulus_len(key);
 if (modlen > *outlen) {
  *outlen = modlen;
  goto error;
 }

 if (bignum_get_unsigned_bin_len(tmp) > modlen)
  goto error;

 *outlen = modlen;
 os_memset(out, 0, modlen);
 if (bignum_get_unsigned_bin(
      tmp, out +
      (modlen - bignum_get_unsigned_bin_len(tmp)), ((void*)0)) < 0)
  goto error;

 ret = 0;

error:

 bignum_deinit(tmp);
 bignum_deinit(a);
 bignum_deinit(b);
 return ret;
}
