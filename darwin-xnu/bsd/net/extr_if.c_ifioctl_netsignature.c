
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int16_t ;
struct ifnet {int dummy; } ;
struct if_nsreq {int ifnsr_len; int ifnsr_flags; int ifnsr_data; int ifnsr_family; } ;
typedef int flags ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;


 int VERIFY (int ) ;
 int bcopy (int *,int *,int) ;
 int ifnet_get_netsignature (struct ifnet*,int ,int*,int *,int ) ;
 int ifnet_set_netsignature (struct ifnet*,int ,int,int ,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_netsignature(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct if_nsreq *ifnsr = (struct if_nsreq *)(void *)data;
 u_int16_t flags;
 int error = 0;

 VERIFY(ifp != ((void*)0));

 switch (cmd) {
 case 128:
  if (ifnsr->ifnsr_len > sizeof (ifnsr->ifnsr_data)) {
   error = EINVAL;
   break;
  }
  bcopy(&ifnsr->ifnsr_flags, &flags, sizeof (flags));
  error = ifnet_set_netsignature(ifp, ifnsr->ifnsr_family,
      ifnsr->ifnsr_len, flags, ifnsr->ifnsr_data);
  break;

 case 129:
  ifnsr->ifnsr_len = sizeof (ifnsr->ifnsr_data);
  error = ifnet_get_netsignature(ifp, ifnsr->ifnsr_family,
      &ifnsr->ifnsr_len, &flags, ifnsr->ifnsr_data);
  if (error == 0)
   bcopy(&flags, &ifnsr->ifnsr_flags, sizeof (flags));
  else
   ifnsr->ifnsr_len = 0;
  break;

 default:
  VERIFY(0);

 }

 return (error);
}
