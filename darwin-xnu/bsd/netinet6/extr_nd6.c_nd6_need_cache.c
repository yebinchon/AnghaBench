
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_type; } ;
int
nd6_need_cache(struct ifnet *ifp)
{







 switch (ifp->if_type) {
 case 139:
 case 136:
 case 135:
 case 133:
 case 130:
 case 131:

 case 132:

 case 134:
 case 129:

 case 128:

 case 138:
 case 137:
  return (1);
 default:
  return (0);
 }
}
