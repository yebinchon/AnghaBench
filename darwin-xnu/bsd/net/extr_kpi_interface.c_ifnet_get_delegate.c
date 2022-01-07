
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_10__ {TYPE_2__* ifp; } ;
struct TYPE_11__ {TYPE_1__ if_delegated; } ;


 int EINVAL ;
 int ENXIO ;
 int ifnet_decr_iorefcnt (TYPE_2__*) ;
 int ifnet_is_attached (TYPE_2__*,int) ;
 int ifnet_lock_done (TYPE_2__*) ;
 int ifnet_lock_shared (TYPE_2__*) ;
 int ifnet_reference (TYPE_2__*) ;

errno_t
ifnet_get_delegate(ifnet_t ifp, ifnet_t *pdelegated_ifp)
{
 if (ifp == ((void*)0) || pdelegated_ifp == ((void*)0))
  return (EINVAL);
 else if (!ifnet_is_attached(ifp, 1))
  return (ENXIO);

 ifnet_lock_shared(ifp);
 if (ifp->if_delegated.ifp != ((void*)0))
  ifnet_reference(ifp->if_delegated.ifp);
 *pdelegated_ifp = ifp->if_delegated.ifp;
 ifnet_lock_done(ifp);


 ifnet_decr_iorefcnt(ifp);

 return (0);
}
