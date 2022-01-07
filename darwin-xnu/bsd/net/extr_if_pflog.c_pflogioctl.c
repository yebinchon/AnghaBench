
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int errno_t ;


 int ENOTTY ;
 int IFF_RUNNING ;
 int IFF_UP ;




 int ifnet_flags (struct ifnet*) ;
 int ifnet_set_flags (struct ifnet*,int ,int ) ;

__attribute__((used)) static errno_t
pflogioctl(struct ifnet *ifp, unsigned long cmd, void *data)
{
#pragma unused(data)
 switch (cmd) {
 case 130:
 case 131:
 case 129:
 case 128:
  if (ifnet_flags(ifp) & IFF_UP)
   ifnet_set_flags(ifp, IFF_RUNNING, IFF_RUNNING);
  else
   ifnet_set_flags(ifp, 0, IFF_RUNNING);
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
