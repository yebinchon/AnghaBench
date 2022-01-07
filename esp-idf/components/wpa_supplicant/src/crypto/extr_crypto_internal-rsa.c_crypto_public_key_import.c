
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_public_key {int dummy; } ;


 scalar_t__ crypto_rsa_import_public_key (int const*,size_t) ;

struct crypto_public_key * crypto_public_key_import(const u8 *key, size_t len)
{
 return (struct crypto_public_key *)
  crypto_rsa_import_public_key(key, len);
}
