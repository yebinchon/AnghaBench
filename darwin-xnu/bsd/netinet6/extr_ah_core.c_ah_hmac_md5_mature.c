
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {TYPE_1__* key_auth; int alg_auth; } ;
struct ah_algorithm {scalar_t__ keymin; scalar_t__ keymax; } ;
struct TYPE_2__ {scalar_t__ sadb_key_bits; } ;


 int LOG_ERR ;
 struct ah_algorithm* ah_algorithm_lookup (int ) ;
 int ipseclog (int ) ;

__attribute__((used)) static int
ah_hmac_md5_mature(struct secasvar *sav)
{
 const struct ah_algorithm *algo;

 if (!sav->key_auth) {
  ipseclog((LOG_ERR, "ah_hmac_md5_mature: no key is given.\n"));
  return 1;
 }

 algo = ah_algorithm_lookup(sav->alg_auth);
 if (!algo) {
  ipseclog((LOG_ERR, "ah_hmac_md5_mature: unsupported algorithm.\n"));
  return 1;
 }

 if (sav->key_auth->sadb_key_bits < algo->keymin
  || algo->keymax < sav->key_auth->sadb_key_bits) {
  ipseclog((LOG_ERR,
      "ah_hmac_md5_mature: invalid key length %d.\n",
      sav->key_auth->sadb_key_bits));
  return 1;
 }

 return 0;
}
