
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ le_next; scalar_t__ le_prev; } ;
struct secasvar {scalar_t__ refcnt; struct secasvar* iv; struct secasvar* lft_s; struct secasvar* lft_h; struct secasvar* lft_c; int * replay; struct secasvar* sched; int schedlen; struct secasvar* key_enc; struct secasvar* key_auth; TYPE_1__ spihash; } ;


 int KFREE (struct secasvar*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_REMOVE (struct secasvar*,int ) ;
 struct secasvar* _KEYBUF (struct secasvar*) ;
 int _KEYLEN (struct secasvar*) ;
 scalar_t__ __LIST_CHAINED (struct secasvar*) ;
 int bzero (struct secasvar*,int ) ;
 int chain ;
 int ipsec_sav_count ;
 int keydb_delsecreplay (int *) ;
 int panic (char*) ;
 int sadb_mutex ;
 int spihash ;

void
key_delsav(
     struct secasvar *sav)
{

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);


 if (sav == ((void*)0))
  panic("key_delsav: NULL pointer is passed.\n");

 if (sav->refcnt > 0)
  return;


 if (__LIST_CHAINED(sav))
  LIST_REMOVE(sav, chain);
 ipsec_sav_count--;

 if (sav->spihash.le_prev || sav->spihash.le_next)
  LIST_REMOVE(sav, spihash);

 if (sav->key_auth != ((void*)0)) {
  bzero(_KEYBUF(sav->key_auth), _KEYLEN(sav->key_auth));
  KFREE(sav->key_auth);
  sav->key_auth = ((void*)0);
 }
 if (sav->key_enc != ((void*)0)) {
  bzero(_KEYBUF(sav->key_enc), _KEYLEN(sav->key_enc));
  KFREE(sav->key_enc);
  sav->key_enc = ((void*)0);
 }
 if (sav->sched) {
  bzero(sav->sched, sav->schedlen);
  KFREE(sav->sched);
  sav->sched = ((void*)0);
 }
 if (sav->replay != ((void*)0)) {
  keydb_delsecreplay(sav->replay);
  sav->replay = ((void*)0);
 }
 if (sav->lft_c != ((void*)0)) {
  KFREE(sav->lft_c);
  sav->lft_c = ((void*)0);
 }
 if (sav->lft_h != ((void*)0)) {
  KFREE(sav->lft_h);
  sav->lft_h = ((void*)0);
 }
 if (sav->lft_s != ((void*)0)) {
  KFREE(sav->lft_s);
  sav->lft_s = ((void*)0);
 }
 if (sav->iv != ((void*)0)) {
  KFREE(sav->iv);
  sav->iv = ((void*)0);
 }

 KFREE(sav);

 return;
}
