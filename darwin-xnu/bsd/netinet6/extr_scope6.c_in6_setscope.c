
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct scope6_id {int* s6id_list; } ;
struct in6_addr {int * s6_addr16; } ;
struct ifnet {int if_flags; } ;


 int EINVAL ;
 int IFF_LOOPBACK ;
 int * IN6_IFEXTRA (struct ifnet*) ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (struct in6_addr*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr*) ;




 struct scope6_id* SID (struct ifnet*) ;
 int htons (int) ;
 int if_inet6data_lock_done (struct ifnet*) ;
 int if_inet6data_lock_shared (struct ifnet*) ;
 int in6_addrscope (struct in6_addr*) ;

int
in6_setscope(struct in6_addr *in6, struct ifnet *ifp, u_int32_t *ret_id)
{
 int scope;
 u_int32_t zoneid = 0;
 struct scope6_id *sid;





 if (IN6_IS_ADDR_LOOPBACK(in6)) {
  if (!(ifp->if_flags & IFF_LOOPBACK)) {
   return (EINVAL);
  } else {
   if (ret_id != ((void*)0))
    *ret_id = 0;
   return (0);
  }
 }

 scope = in6_addrscope(in6);

 if_inet6data_lock_shared(ifp);
 if (IN6_IFEXTRA(ifp) == ((void*)0)) {
  if_inet6data_lock_done(ifp);
  if (ret_id)
   *ret_id = 0;
  return (EINVAL);
 }
 sid = SID(ifp);
 switch (scope) {
 case 131:
  zoneid = sid->s6id_list[131];
  break;

 case 130:
  zoneid = sid->s6id_list[130];
  break;

 case 128:
  zoneid = sid->s6id_list[128];
  break;

 case 129:
  zoneid = sid->s6id_list[129];
  break;
 default:
  zoneid = 0;
  break;
 }
 if_inet6data_lock_done(ifp);

 if (ret_id != ((void*)0))
  *ret_id = zoneid;

 if (IN6_IS_SCOPE_LINKLOCAL(in6) || IN6_IS_ADDR_MC_INTFACELOCAL(in6))
  in6->s6_addr16[1] = htons(zoneid & 0xffff);

 return (0);
}
