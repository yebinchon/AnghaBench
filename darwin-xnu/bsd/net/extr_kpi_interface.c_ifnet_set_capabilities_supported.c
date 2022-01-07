
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_5__ {int if_capabilities; } ;


 int EINVAL ;
 int IFCAP_VALID ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;

errno_t
ifnet_set_capabilities_supported(ifnet_t ifp, u_int32_t new_caps,
    u_int32_t mask)
{
 errno_t error = 0;
 int tmp;

 if (ifp == ((void*)0))
  return (EINVAL);

 ifnet_lock_exclusive(ifp);
 tmp = (new_caps & mask) | (ifp->if_capabilities & ~mask);
 if ((tmp & ~IFCAP_VALID))
  error = EINVAL;
 else
  ifp->if_capabilities = tmp;
 ifnet_lock_done(ifp);

 return (error);
}
