
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int unit; int name; } ;
union ip6_fw_if {int fu_via_ip6; TYPE_1__ fu_via_if; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_6__ {struct ifaddr* tqh_first; } ;
struct ifnet {int if_unit; TYPE_2__ if_addrlist; int if_name; } ;
struct TYPE_7__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_4__* ifa_addr; TYPE_3__ ifa_list; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int IP6FW_IFNLEN ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static
__inline int
iface_match(struct ifnet *ifp, union ip6_fw_if *ifu, int byname)
{

 if (byname) {

  if (ifu->fu_via_if.unit != -1
      && ifp->if_unit != ifu->fu_via_if.unit)
   return(0);

  if (strncmp(ifp->if_name, ifu->fu_via_if.name, IP6FW_IFNLEN))
   return(0);
  return(1);
 } else if (!IN6_IS_ADDR_UNSPECIFIED(&ifu->fu_via_ip6)) {
  struct ifaddr *ia;

  ifnet_lock_shared(ifp);
  for (ia = ifp->if_addrlist.tqh_first; ia;
      ia = ia->ifa_list.tqe_next)
  {
   IFA_LOCK_SPIN(ia);
   if (ia->ifa_addr->sa_family != AF_INET6) {
    IFA_UNLOCK(ia);
    continue;
   }
   if (!IN6_ARE_ADDR_EQUAL(&ifu->fu_via_ip6,
       &(((struct sockaddr_in6 *)
       (ia->ifa_addr))->sin6_addr))) {
    IFA_UNLOCK(ia);
    continue;
   }
   IFA_UNLOCK(ia);
   ifnet_lock_done(ifp);
   return(1);
  }
  ifnet_lock_done(ifp);
  return(0);
 }
 return(1);
}
