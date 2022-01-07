
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {int* s6id_list; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int * IN6_IFEXTRA (struct ifnet*) ;




 struct scope6_id* SID (struct ifnet*) ;
 int if_inet6data_lock_done (struct ifnet*) ;
 int if_inet6data_lock_shared (struct ifnet*) ;
 int in6_addrscope (struct in6_addr*) ;

int
in6_addr2scopeid(struct ifnet *ifp, struct in6_addr *addr)
{
 int scope = in6_addrscope(addr);
 int retid = 0;
 struct scope6_id *sid;

 if_inet6data_lock_shared(ifp);
 if (IN6_IFEXTRA(ifp) == ((void*)0))
  goto err;
 sid = SID(ifp);
 switch (scope) {
 case 130:
  retid = -1;
  break;
 case 131:
  retid = sid->s6id_list[131];
  break;
 case 128:
  retid = sid->s6id_list[128];
  break;
 case 129:
  retid = sid->s6id_list[129];
  break;
 default:
  break;
 }
err:
 if_inet6data_lock_done(ifp);

 return (retid);
}
