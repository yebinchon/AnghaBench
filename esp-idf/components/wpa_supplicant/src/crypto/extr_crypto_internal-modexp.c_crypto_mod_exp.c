
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bignum {int dummy; } ;


 int bignum_deinit (struct bignum*) ;
 scalar_t__ bignum_exptmod (struct bignum*,struct bignum*,struct bignum*,struct bignum*) ;
 int bignum_get_unsigned_bin (struct bignum*,int *,size_t*) ;
 struct bignum* bignum_init () ;
 scalar_t__ bignum_set_unsigned_bin (struct bignum*,int const*,size_t) ;

int
crypto_mod_exp(const u8 *base, size_t base_len,
     const u8 *power, size_t power_len,
     const u8 *modulus, size_t modulus_len,
     u8 *result, size_t *result_len)
{
 struct bignum *bn_base, *bn_exp, *bn_modulus, *bn_result;
 int ret = -1;

 bn_base = bignum_init();
 bn_exp = bignum_init();
 bn_modulus = bignum_init();
 bn_result = bignum_init();

 if (bn_base == ((void*)0) || bn_exp == ((void*)0) || bn_modulus == ((void*)0) ||
     bn_result == ((void*)0))
  goto error;

 if (bignum_set_unsigned_bin(bn_base, base, base_len) < 0 ||
     bignum_set_unsigned_bin(bn_exp, power, power_len) < 0 ||
     bignum_set_unsigned_bin(bn_modulus, modulus, modulus_len) < 0)
  goto error;

 if (bignum_exptmod(bn_base, bn_exp, bn_modulus, bn_result) < 0)
  goto error;

 ret = bignum_get_unsigned_bin(bn_result, result, result_len);

error:
 bignum_deinit(bn_base);
 bignum_deinit(bn_exp);
 bignum_deinit(bn_modulus);
 bignum_deinit(bn_result);
 return ret;
}
