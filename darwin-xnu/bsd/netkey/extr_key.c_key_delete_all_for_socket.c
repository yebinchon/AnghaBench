
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct socket {int dummy; } ;
struct secasvar {int flags2; struct socket* so; int * savtree; } ;
struct secashead {int flags2; struct socket* so; int * savtree; } ;


 int KEY_SADB_LOCKED ;
 struct secasvar* LIST_FIRST (int *) ;
 struct secasvar* LIST_NEXT (struct secasvar*,int ) ;
 int SADB_SASTATE_DEAD ;
 int SADB_X_EXT_SA2_DELETE_ON_DETACH ;
 size_t _ARRAYLEN (int ) ;
 int chain ;
 int key_freesav (struct secasvar*,int ) ;
 int key_sa_chgstate (struct secasvar*,int ) ;
 int sahtree ;
 int saorder_state_alive ;
 size_t* saorder_state_any ;

__attribute__((used)) static void
key_delete_all_for_socket (struct socket *so)
{
 struct secashead *sah, *nextsah;
 struct secasvar *sav, *nextsav;
 u_int stateidx;
 u_int state;

 for (sah = LIST_FIRST(&sahtree);
   sah != ((void*)0);
   sah = nextsah) {
  nextsah = LIST_NEXT(sah, chain);
  for (stateidx = 0; stateidx < _ARRAYLEN(saorder_state_alive); stateidx++) {
   state = saorder_state_any[stateidx];
   for (sav = LIST_FIRST(&sah->savtree[state]); sav != ((void*)0); sav = nextsav) {
    nextsav = LIST_NEXT(sav, chain);
    if (sav->flags2 & SADB_X_EXT_SA2_DELETE_ON_DETACH &&
     sav->so == so) {
     key_sa_chgstate(sav, SADB_SASTATE_DEAD);
     key_freesav(sav, KEY_SADB_LOCKED);
    }
   }
  }
 }
}
