
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;
struct ifnet {int if_index; } ;
struct ifaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ sin_port; } ;
struct TYPE_3__ {scalar_t__ sin6_scope_id; } ;


 scalar_t__ AF_INET6 ;
 int FALSE ;
 int IFSCOPE_NONE ;
 TYPE_2__* SIN (struct sockaddr_storage*) ;
 TYPE_1__* SIN6 (struct sockaddr_storage*) ;
 struct ifaddr* ifa_ifwithaddr_scoped_locked (struct sockaddr*,int ) ;
 int ifaddr_release (struct ifaddr*) ;
 int sa_copy (struct sockaddr*,struct sockaddr_storage*,int *) ;

__attribute__((used)) static bool
necp_ifnet_matches_local_address(struct ifnet *ifp, struct sockaddr *sa)
{
 struct ifaddr *ifa = ((void*)0);
 bool matched_local_address = FALSE;



 struct sockaddr_storage address;
 u_int ifscope = IFSCOPE_NONE;
 (void)sa_copy(sa, &address, &ifscope);
 SIN(&address)->sin_port = 0;
 if (address.ss_family == AF_INET6) {
  SIN6(&address)->sin6_scope_id = 0;
 }

 ifa = ifa_ifwithaddr_scoped_locked((struct sockaddr *)&address, ifp->if_index);
 matched_local_address = (ifa != ((void*)0));

 if (ifa) {
  ifaddr_release(ifa);
 }

 return (matched_local_address);
}
