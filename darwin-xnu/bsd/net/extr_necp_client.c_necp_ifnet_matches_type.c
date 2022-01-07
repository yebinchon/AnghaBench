
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct ifnet {TYPE_1__ if_delegated; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ if_functional_type (struct ifnet*,int) ;

__attribute__((used)) static bool
necp_ifnet_matches_type(struct ifnet *ifp, u_int8_t interface_type, bool check_delegates)
{
 struct ifnet *check_ifp = ifp;
 while (check_ifp) {
  if (if_functional_type(check_ifp, TRUE) == interface_type) {
   return (TRUE);
  }
  if (!check_delegates) {
   break;
  }
  check_ifp = check_ifp->if_delegated.ifp;

 }
 return (FALSE);
}
