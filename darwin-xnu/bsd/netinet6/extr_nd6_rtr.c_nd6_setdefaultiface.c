
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef struct ifnet* ifnet_t ;


 int EINVAL ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LOG_INFO ;
 int defrouter_select (struct ifnet*) ;
 int if_index ;
 char* if_name (struct ifnet*) ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_defifindex ;
 struct ifnet* nd6_defifp ;
 int nd6_mutex ;
 int nd6_prefix_sync (struct ifnet*) ;
 int nd6log (int ) ;
 int scope6_setdefault (struct ifnet*) ;

int
nd6_setdefaultiface(
 int ifindex)
{
 int error = 0;
 ifnet_t def_ifp = ((void*)0);

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

 ifnet_head_lock_shared();
 if (ifindex < 0 || if_index < ifindex) {
  ifnet_head_done();
  return (EINVAL);
 }
 def_ifp = ifindex2ifnet[ifindex];
 ifnet_head_done();

 lck_mtx_lock(nd6_mutex);
 if (nd6_defifindex != ifindex) {
  struct ifnet *odef_ifp = nd6_defifp;

  nd6_defifindex = ifindex;
  if (nd6_defifindex > 0)
   nd6_defifp = def_ifp;
  else
   nd6_defifp = ((void*)0);

  if (nd6_defifp != ((void*)0))
   nd6log((LOG_INFO, "%s: is now the default "
       "interface (was %s)\n", if_name(nd6_defifp),
       odef_ifp != ((void*)0) ? if_name(odef_ifp) : "NONE"));
  else
   nd6log((LOG_INFO, "No default interface set\n"));
  if (odef_ifp != ((void*)0)) {
   defrouter_select(odef_ifp);
  }

  if (nd6_defifp != ((void*)0)) {
   defrouter_select(nd6_defifp);
   nd6_prefix_sync(nd6_defifp);
  }






  scope6_setdefault(nd6_defifp);
 }
 lck_mtx_unlock(nd6_mutex);
 return (error);
}
