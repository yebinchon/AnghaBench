
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {int* s6id_list; } ;
struct ifnet {int if_index; } ;


 int * IN6_IFEXTRA (struct ifnet*) ;
 size_t IPV6_ADDR_SCOPE_INTFACELOCAL ;
 size_t IPV6_ADDR_SCOPE_LINKLOCAL ;
 size_t IPV6_ADDR_SCOPE_ORGLOCAL ;
 size_t IPV6_ADDR_SCOPE_SITELOCAL ;
 struct scope6_id* SID (struct ifnet*) ;
 int VERIFY (int ) ;
 int if_inet6data_lock_done (struct ifnet*) ;
 int if_inet6data_lock_exclusive (struct ifnet*) ;

void
scope6_ifattach(struct ifnet *ifp)
{
 struct scope6_id *sid;

 VERIFY(IN6_IFEXTRA(ifp) != ((void*)0));
 if_inet6data_lock_exclusive(ifp);
 sid = SID(ifp);





 sid->s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] = ifp->if_index;
 sid->s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] = ifp->if_index;





 if_inet6data_lock_done(ifp);
}
