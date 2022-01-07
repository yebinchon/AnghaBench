
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {int ia_ifa; TYPE_1__ ia_addr; } ;
struct ifnet {int if_flags; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct dadq {int * dad_nonce; int dad_ns_ocount; int dad_ns_tcount; } ;


 int DAD_LOCK (struct dadq*) ;
 int DAD_UNLOCK (struct dadq*) ;
 int IFA_LOCK_SPIN (int *) ;
 int IFA_UNLOCK (int *) ;
 int IFF_POINTOPOINT ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int ND_OPT_NONCE_LEN32 ;
 int RandomULong () ;
 scalar_t__ dad_enhanced ;
 int nd6_ns_output (struct ifnet*,int *,struct in6_addr*,int *,int *) ;

__attribute__((used)) static void
nd6_dad_ns_output(struct dadq *dp, struct ifaddr *ifa)
{
 struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
 struct ifnet *ifp = ifa->ifa_ifp;
 int i = 0;
 struct in6_addr taddr6;

 DAD_LOCK(dp);
 dp->dad_ns_tcount++;
 if ((ifp->if_flags & IFF_UP) == 0) {
  DAD_UNLOCK(dp);
  return;
 }
 if ((ifp->if_flags & IFF_RUNNING) == 0) {
  DAD_UNLOCK(dp);
  return;
 }

 dp->dad_ns_ocount++;
 DAD_UNLOCK(dp);
 IFA_LOCK_SPIN(&ia->ia_ifa);
 taddr6 = ia->ia_addr.sin6_addr;
 IFA_UNLOCK(&ia->ia_ifa);
 if (dad_enhanced != 0 && !(ifp->if_flags & IFF_POINTOPOINT)) {
  for (i = 0; i < ND_OPT_NONCE_LEN32; i++)
   dp->dad_nonce[i] = RandomULong();
 }
 nd6_ns_output(ifp, ((void*)0), &taddr6, ((void*)0),
     (uint8_t *)&dp->dad_nonce[0]);
}
