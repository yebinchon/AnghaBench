
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct secasvar {scalar_t__ refcnt; int * sah; int state; } ;
struct secashead {struct secashead* identd; struct secashead* idents; int * ipsec_if; int sa_route; int * savtree; } ;


 int KEY_CHKSASTATE (size_t,int ,char*) ;
 int KEY_SADB_LOCKED ;
 int KFREE (struct secashead*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ LIST_FIRST (int *) ;
 struct secasvar* LIST_NEXT (struct secasvar*,int ) ;
 int LIST_REMOVE (struct secashead*,int ) ;
 int ROUTE_RELEASE (int *) ;
 size_t _ARRAYLEN (size_t*) ;
 scalar_t__ __LIST_CHAINED (struct secashead*) ;
 int chain ;
 int ifnet_release (int *) ;
 int key_freesav (struct secasvar*,int ) ;
 int panic (char*) ;
 int sadb_mutex ;
 size_t* saorder_state_any ;

void
key_delsah(
     struct secashead *sah)
{
 struct secasvar *sav, *nextsav;
 u_int stateidx, state;
 int zombie = 0;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);


 if (sah == ((void*)0))
  panic("key_delsah: NULL pointer is passed.\n");


 for (stateidx = 0;
      stateidx < _ARRAYLEN(saorder_state_any);
      stateidx++) {

  state = saorder_state_any[stateidx];
  for (sav = (struct secasvar *)LIST_FIRST(&sah->savtree[state]);
       sav != ((void*)0);
       sav = nextsav) {

   nextsav = LIST_NEXT(sav, chain);

   if (sav->refcnt > 0) {

    zombie++;
    continue;
   }


   KEY_CHKSASTATE(state, sav->state, "key_delsah");

   key_freesav(sav, KEY_SADB_LOCKED);


   sav->sah = ((void*)0);
   sav = ((void*)0);
  }
 }


 if (zombie)
  return;

 ROUTE_RELEASE(&sah->sa_route);

 if (sah->ipsec_if) {
  ifnet_release(sah->ipsec_if);
  sah->ipsec_if = ((void*)0);
 }

    if (sah->idents) {
        KFREE(sah->idents);
    }

    if (sah->identd) {
        KFREE(sah->identd);
    }


 if (__LIST_CHAINED(sah))
  LIST_REMOVE(sah, chain);

 KFREE(sah);

 return;
}
