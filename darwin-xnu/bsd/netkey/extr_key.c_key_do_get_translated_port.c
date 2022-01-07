
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct secasvar {int flags; scalar_t__ remote_ike_port; int natt_encapsulated_src_port; TYPE_1__* lft_c; int state; } ;
struct secashead {int * savtree; } ;
struct TYPE_2__ {scalar_t__ sadb_lifetime_addtime; } ;


 int KEY_CHKSASTATE (int ,size_t,char*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct secasvar* LIST_FIRST (int *) ;
 struct secasvar* LIST_NEXT (struct secasvar*,int ) ;
 int SADB_X_EXT_NATT_MULTIPLEUSERS ;
 int chain ;
 scalar_t__ key_preferred_oldsa ;
 int panic (char*) ;
 int sadb_mutex ;

__attribute__((used)) static int
key_do_get_translated_port(
         struct secashead *sah,
         struct secasvar *outsav,
         u_int state)
{
 struct secasvar *currsav, *nextsav, *candidate;


 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);


 candidate = ((void*)0);

 for (currsav = LIST_FIRST(&sah->savtree[state]);
      currsav != ((void*)0);
      currsav = nextsav) {

  nextsav = LIST_NEXT(currsav, chain);


  KEY_CHKSASTATE(currsav->state, state, "key_do_get_translated_port");

  if ((currsav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) == 0 ||
   currsav->remote_ike_port != outsav->remote_ike_port)
   continue;

  if (candidate == ((void*)0)) {
   candidate = currsav;
   continue;
  }




  if (candidate->lft_c == ((void*)0) || currsav->lft_c == ((void*)0))
   panic("key_do_get_translated_port: "
      "lifetime_current is NULL.\n");


  if (key_preferred_oldsa) {
   if (candidate->lft_c->sadb_lifetime_addtime >
    currsav->lft_c->sadb_lifetime_addtime) {
    candidate = currsav;
   }
   continue;

  }


  if (candidate->lft_c->sadb_lifetime_addtime <
   currsav->lft_c->sadb_lifetime_addtime)
   candidate = currsav;
 }

 if (candidate) {
  outsav->natt_encapsulated_src_port = candidate->natt_encapsulated_src_port;
  return 1;
 }

 return 0;
}
