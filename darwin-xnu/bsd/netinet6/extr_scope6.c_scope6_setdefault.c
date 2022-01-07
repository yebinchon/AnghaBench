
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_index; } ;
struct TYPE_2__ {scalar_t__* s6id_list; } ;


 size_t IPV6_ADDR_SCOPE_INTFACELOCAL ;
 size_t IPV6_ADDR_SCOPE_LINKLOCAL ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int scope6_lock ;
 TYPE_1__ sid_default ;

void
scope6_setdefault(struct ifnet *ifp)
{






 lck_mtx_lock(&scope6_lock);
 if (ifp != ((void*)0)) {
  sid_default.s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] =
      ifp->if_index;
  sid_default.s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] =
      ifp->if_index;
 } else {
  sid_default.s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] = 0;
  sid_default.s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] = 0;
 }
 lck_mtx_unlock(&scope6_lock);
}
