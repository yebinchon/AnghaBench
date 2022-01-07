
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sadb_msghdr {int* extlen; int ** ext; } ;
struct sadb_key {int sadb_key_bits; } ;


 size_t SADB_EXT_KEY_AUTH ;
 size_t SADB_EXT_KEY_ENCRYPT ;
 int bzero (int *,int) ;

__attribute__((used)) static void
bzero_keys(const struct sadb_msghdr *mh)
{
 int extlen = 0;
 int offset = 0;

 if (!mh) {
  return;
 }
 offset = sizeof(struct sadb_key);

 if (mh->ext[SADB_EXT_KEY_ENCRYPT]) {
  struct sadb_key *key = (struct sadb_key*)mh->ext[SADB_EXT_KEY_ENCRYPT];
  extlen = key->sadb_key_bits >> 3;

  if (mh->extlen[SADB_EXT_KEY_ENCRYPT] >= offset + extlen) {
   bzero((uint8_t *)mh->ext[SADB_EXT_KEY_ENCRYPT]+offset, extlen);
  } else {
   bzero(mh->ext[SADB_EXT_KEY_ENCRYPT], mh->extlen[SADB_EXT_KEY_ENCRYPT]);
  }
 }
 if (mh->ext[SADB_EXT_KEY_AUTH]) {
  struct sadb_key *key = (struct sadb_key*)mh->ext[SADB_EXT_KEY_AUTH];
  extlen = key->sadb_key_bits >> 3;

  if (mh->extlen[SADB_EXT_KEY_AUTH] >= offset + extlen) {
   bzero((uint8_t *)mh->ext[SADB_EXT_KEY_AUTH]+offset, extlen);
  } else {
   bzero(mh->ext[SADB_EXT_KEY_AUTH], mh->extlen[SADB_EXT_KEY_AUTH]);
  }
 }
}
