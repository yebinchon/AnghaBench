
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct ifnet {int dummy; } ;


 int IFNET_FAMILY_ANY ;
 int dlil_proto_unplumb_all (struct ifnet*) ;
 int if_down (struct ifnet*) ;
 int ifnet_list_free (struct ifnet**) ;
 scalar_t__ ifnet_list_get_all (int ,struct ifnet***,size_t*) ;

int
if_down_all(void)
{
 struct ifnet **ifp;
 u_int32_t count;
 u_int32_t i;

 if (ifnet_list_get_all(IFNET_FAMILY_ANY, &ifp, &count) == 0) {
  for (i = 0; i < count; i++) {
   if_down(ifp[i]);
   dlil_proto_unplumb_all(ifp[i]);
  }
  ifnet_list_free(ifp);
 }

 return (0);
}
