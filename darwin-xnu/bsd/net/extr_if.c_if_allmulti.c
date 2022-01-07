
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_amcount; int if_flags; } ;


 int IFF_ALLMULTI ;
 int SIOCSIFFLAGS ;
 int ifnet_ioctl (struct ifnet*,int ,int ,int *) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int rt_ifmsg (struct ifnet*) ;

int
if_allmulti(struct ifnet *ifp, int onswitch)
{
 int error = 0;
 int modified = 0;

 ifnet_lock_exclusive(ifp);

 if (onswitch) {
  if (ifp->if_amcount++ == 0) {
   ifp->if_flags |= IFF_ALLMULTI;
   modified = 1;
  }
 } else {
  if (ifp->if_amcount > 1) {
   ifp->if_amcount--;
  } else {
   ifp->if_amcount = 0;
   ifp->if_flags &= ~IFF_ALLMULTI;
   modified = 1;
  }
 }
 ifnet_lock_done(ifp);

 if (modified)
  error = ifnet_ioctl(ifp, 0, SIOCSIFFLAGS, ((void*)0));

 if (error == 0)
  rt_ifmsg(ifp);
 return (error);
}
