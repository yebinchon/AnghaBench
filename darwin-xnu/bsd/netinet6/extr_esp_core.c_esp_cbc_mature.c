
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int flags; int alg_enc; TYPE_1__* key_enc; } ;
struct esp_algorithm {int keymin; int keymax; int name; } ;
typedef int des_cblock ;
struct TYPE_2__ {int sadb_key_bits; } ;


 int LOG_ERR ;


 int SADB_X_EXT_DERIV ;
 int SADB_X_EXT_OLD ;
 scalar_t__ _KEYBUF (TYPE_1__*) ;
 int des_is_weak_key (int *) ;
 struct esp_algorithm* esp_algorithm_lookup (int) ;
 int ipseclog (int ) ;

__attribute__((used)) static int
esp_cbc_mature(struct secasvar *sav)
{
 int keylen;
 const struct esp_algorithm *algo;

 if (sav->flags & SADB_X_EXT_OLD) {
  ipseclog((LOG_ERR,
      "esp_cbc_mature: algorithm incompatible with esp-old\n"));
  return 1;
 }
 if (sav->flags & SADB_X_EXT_DERIV) {
  ipseclog((LOG_ERR,
      "esp_cbc_mature: algorithm incompatible with derived\n"));
  return 1;
 }

 if (!sav->key_enc) {
  ipseclog((LOG_ERR, "esp_cbc_mature: no key is given.\n"));
  return 1;
 }

 algo = esp_algorithm_lookup(sav->alg_enc);
 if (!algo) {
  ipseclog((LOG_ERR,
      "esp_cbc_mature: unsupported algorithm.\n"));
  return 1;
 }

 keylen = sav->key_enc->sadb_key_bits;
 if (keylen < algo->keymin || algo->keymax < keylen) {
  ipseclog((LOG_ERR,
      "esp_cbc_mature %s: invalid key length %d.\n",
      algo->name, sav->key_enc->sadb_key_bits));
  return 1;
 }
 switch (sav->alg_enc) {
 case 129:

  if (des_is_weak_key((des_cblock *)_KEYBUF(sav->key_enc)) ||
      des_is_weak_key((des_cblock *)(_KEYBUF(sav->key_enc) + 8)) ||
      des_is_weak_key((des_cblock *)(_KEYBUF(sav->key_enc) + 16))) {
   ipseclog((LOG_ERR,
       "esp_cbc_mature %s: weak key was passed.\n",
       algo->name));
   return 1;
  }
  break;
 case 128:

  if (!(keylen == 128 || keylen == 192 || keylen == 256)) {
   ipseclog((LOG_ERR,
       "esp_cbc_mature %s: invalid key length %d.\n",
       algo->name, keylen));
   return 1;
  }
  break;
 }

 return 0;
}
