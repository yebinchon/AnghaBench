
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ifnet* ifp; } ;
struct ifnet {TYPE_1__ if_delegated; int if_xname; } ;


 int FALSE ;
 int IFXNAMSIZ ;
 int TRUE ;
 scalar_t__ strncmp (int ,char const*,int ) ;

__attribute__((used)) static bool
necp_ifnet_matches_name(struct ifnet *ifp, const char *interface_name, bool check_delegates)
{
 struct ifnet *check_ifp = ifp;
 while (check_ifp) {
  if (strncmp(check_ifp->if_xname, interface_name, IFXNAMSIZ) == 0) {
   return (TRUE);
  }
  if (!check_delegates) {
   break;
  }
  check_ifp = check_ifp->if_delegated.ifp;
 }
 return (FALSE);
}
