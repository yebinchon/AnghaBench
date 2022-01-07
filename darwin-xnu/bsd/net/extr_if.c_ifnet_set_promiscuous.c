
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_8__ {int if_flags; scalar_t__ if_pcount; } ;


 int IFF_PROMISC ;
 int IFF_UP ;
 int LOG_INFO ;
 int SIOCSIFFLAGS ;
 int if_name (TYPE_1__*) ;
 int ifnet_ioctl (TYPE_1__*,int ,int ,int *) ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;
 int log (int ,char*,int ,char*,char*) ;
 int rt_ifmsg (TYPE_1__*) ;

errno_t
ifnet_set_promiscuous(
 ifnet_t ifp,
 int pswitch)
{
 int error = 0;
 int oldflags = 0;
 int newflags = 0;

 ifnet_lock_exclusive(ifp);
 oldflags = ifp->if_flags;
 ifp->if_pcount += pswitch ? 1 : -1;

 if (ifp->if_pcount > 0)
  ifp->if_flags |= IFF_PROMISC;
 else
  ifp->if_flags &= ~IFF_PROMISC;

 newflags = ifp->if_flags;
 ifnet_lock_done(ifp);

 if (newflags != oldflags && (newflags & IFF_UP) != 0) {
  error = ifnet_ioctl(ifp, 0, SIOCSIFFLAGS, ((void*)0));
  if (error == 0) {
   rt_ifmsg(ifp);
  } else {
   ifnet_lock_exclusive(ifp);

   ifp->if_pcount -= pswitch ? 1 : -1;
   if (ifp->if_pcount > 0)
       ifp->if_flags |= IFF_PROMISC;
   else
       ifp->if_flags &= ~IFF_PROMISC;
   ifnet_lock_done(ifp);
  }
 }

 if (newflags != oldflags) {
  log(LOG_INFO, "%s: promiscuous mode %s%s\n",
      if_name(ifp),
      (newflags & IFF_PROMISC) != 0 ? "enable" : "disable",
      error != 0 ? " failed" : " succeeded");
 }
 return (error);
}
