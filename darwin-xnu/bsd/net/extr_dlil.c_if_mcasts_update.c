
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_updatemcasts; } ;
typedef scalar_t__ errno_t ;


 scalar_t__ EAFNOSUPPORT ;
 int SIOCADDMULTI ;
 char* if_name (struct ifnet*) ;
 scalar_t__ ifnet_ioctl (struct ifnet*,int ,int ,int *) ;
 int printf (char*,char*,char*,int,scalar_t__) ;

errno_t
if_mcasts_update(struct ifnet *ifp)
{
 errno_t err;

 err = ifnet_ioctl(ifp, 0, SIOCADDMULTI, ((void*)0));
 if (err == EAFNOSUPPORT)
  err = 0;
 printf("%s: %s %d suspended link-layer multicast membership(s) "
     "(err=%d)\n", if_name(ifp),
     (err == 0 ? "successfully restored" : "failed to restore"),
     ifp->if_updatemcasts, err);


 return (0);
}
