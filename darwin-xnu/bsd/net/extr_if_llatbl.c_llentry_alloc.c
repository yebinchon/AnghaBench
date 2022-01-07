
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct lltable {int llt_af; } ;
struct llentry {int dummy; } ;
struct ifnet {int if_flags; } ;


 int IFF_NOARP ;
 int IF_AFDATA_RLOCK (struct ifnet*,int ) ;
 int IF_AFDATA_RUNLOCK (struct ifnet*,int ) ;
 int IF_AFDATA_WLOCK (struct ifnet*,int ) ;
 int IF_AFDATA_WUNLOCK (struct ifnet*,int ) ;
 int LLE_ADDREF (struct llentry*) ;
 int LLE_EXCLUSIVE ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 struct llentry* lla_lookup (struct lltable*,int ,struct sockaddr*) ;
 struct llentry* lltable_alloc_entry (struct lltable*,int ,struct sockaddr*) ;
 int lltable_free_entry (struct lltable*,struct llentry*) ;
 int lltable_link_entry (struct lltable*,struct llentry*) ;

struct llentry *
llentry_alloc(struct ifnet *ifp, struct lltable *lt,
    struct sockaddr_storage *dst)
{
 struct llentry *la, *la_tmp;

 IF_AFDATA_RLOCK(ifp, lt->llt_af);
 la = lla_lookup(lt, LLE_EXCLUSIVE, (struct sockaddr *)dst);
 IF_AFDATA_RUNLOCK(ifp, lt->llt_af);

 if (la != ((void*)0)) {
  LLE_ADDREF(la);
  LLE_WUNLOCK(la);
  return (la);
 }

 if ((ifp->if_flags & IFF_NOARP) == 0) {
  la = lltable_alloc_entry(lt, 0, (struct sockaddr *)dst);
  if (la == ((void*)0))
   return (((void*)0));
  IF_AFDATA_WLOCK(ifp, lt->llt_af);
  LLE_WLOCK(la);

  la_tmp = lla_lookup(lt, LLE_EXCLUSIVE, (struct sockaddr *)dst);
  if (la_tmp == ((void*)0))
   lltable_link_entry(lt, la);
  IF_AFDATA_WUNLOCK(ifp, lt->llt_af);
  if (la_tmp != ((void*)0)) {
   lltable_free_entry(lt, la);
   la = la_tmp;
  }
  LLE_ADDREF(la);
  LLE_WUNLOCK(la);
 }

 return (la);
}
