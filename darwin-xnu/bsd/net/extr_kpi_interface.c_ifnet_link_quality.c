
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* ifnet_t ;
struct TYPE_6__ {int lqm_state; } ;
struct TYPE_7__ {TYPE_1__ if_interface_state; } ;


 int IFNET_LQM_THRESH_OFF ;
 int ifnet_lock_done (TYPE_2__*) ;
 int ifnet_lock_shared (TYPE_2__*) ;

int
ifnet_link_quality(ifnet_t ifp)
{
 int lqm;

 if (ifp == ((void*)0))
  return (IFNET_LQM_THRESH_OFF);

 ifnet_lock_shared(ifp);
 lqm = ifp->if_interface_state.lqm_state;
 ifnet_lock_done(ifp);

 return (lqm);
}
