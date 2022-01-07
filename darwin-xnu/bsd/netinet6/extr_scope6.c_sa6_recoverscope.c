
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {int sin6_scope_id; TYPE_1__ sin6_addr; } ;
typedef scalar_t__ boolean_t ;


 int ENXIO ;
 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (TYPE_1__*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (TYPE_1__*) ;
 int LOG_NOTICE ;
 int if_index ;
 int ** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ip6_sprintf (TYPE_1__*) ;
 int log (int ,char*,int ,int) ;
 int ntohs (scalar_t__) ;

int
sa6_recoverscope(struct sockaddr_in6 *sin6, boolean_t attachcheck)
{
 u_int32_t zoneid;

 if (sin6->sin6_scope_id != 0) {
  log(LOG_NOTICE,
      "sa6_recoverscope: assumption failure (non 0 ID): %s%%%d\n",
      ip6_sprintf(&sin6->sin6_addr), sin6->sin6_scope_id);

 }
 if (IN6_IS_SCOPE_LINKLOCAL(&sin6->sin6_addr) ||
     IN6_IS_ADDR_MC_INTFACELOCAL(&sin6->sin6_addr)) {



  zoneid = ntohs(sin6->sin6_addr.s6_addr16[1]);
  if (zoneid) {

   if (if_index < zoneid)
    return (ENXIO);
   if (attachcheck) {
    ifnet_head_lock_shared();
    if (ifindex2ifnet[zoneid] == ((void*)0)) {
     ifnet_head_done();
     return (ENXIO);
    }
    ifnet_head_done();
   }
   sin6->sin6_addr.s6_addr16[1] = 0;
   sin6->sin6_scope_id = zoneid;
  }
 }

 return (0);
}
