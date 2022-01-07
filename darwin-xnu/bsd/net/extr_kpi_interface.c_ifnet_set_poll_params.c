
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_poll_params {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int FALSE ;
 int dlil_rxpoll_set_params (struct ifnet*,struct ifnet_poll_params*,int ) ;
 int ifnet_decr_iorefcnt (struct ifnet*) ;
 int ifnet_is_attached (struct ifnet*,int) ;

errno_t
ifnet_set_poll_params(struct ifnet *ifp, struct ifnet_poll_params *p)
{
 errno_t err;

 if (ifp == ((void*)0))
  return (EINVAL);
 else if (!ifnet_is_attached(ifp, 1))
  return (ENXIO);

 err = dlil_rxpoll_set_params(ifp, p, FALSE);


 ifnet_decr_iorefcnt(ifp);

 return (err);
}
