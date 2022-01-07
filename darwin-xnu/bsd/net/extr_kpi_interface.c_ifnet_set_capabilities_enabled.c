
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
struct net_event_data {int if_unit; TYPE_1__* dv; int if_family; int * if_name; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kev_msg {int if_unit; TYPE_1__* dv; int if_family; int * if_name; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_8__ {int if_capenable; int if_capabilities; scalar_t__ if_unit; int if_family; int if_name; } ;
struct TYPE_7__ {int data_length; struct net_event_data* data_ptr; } ;


 int EINVAL ;
 int IFCAP_VALID ;
 int IFNAMSIZ ;
 int KEV_DL_IFCAP_CHANGED ;
 int KEV_DL_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int bzero (struct net_event_data*,int) ;
 int dlil_post_complete_msg (TYPE_2__*,struct net_event_data*) ;
 int ifnet_lock_done (TYPE_2__*) ;
 int ifnet_lock_exclusive (TYPE_2__*) ;
 int strlcpy (int *,int ,int ) ;

errno_t
ifnet_set_capabilities_enabled(ifnet_t ifp, u_int32_t new_caps,
    u_int32_t mask)
{
 errno_t error = 0;
 int tmp;
 struct kev_msg ev_msg;
 struct net_event_data ev_data;

 if (ifp == ((void*)0))
  return (EINVAL);

 ifnet_lock_exclusive(ifp);
 tmp = (new_caps & mask) | (ifp->if_capenable & ~mask);
 if ((tmp & ~IFCAP_VALID) || (tmp & ~ifp->if_capabilities))
  error = EINVAL;
 else
  ifp->if_capenable = tmp;
 ifnet_lock_done(ifp);


 bzero(&ev_data, sizeof (struct net_event_data));
 bzero(&ev_msg, sizeof (struct kev_msg));
 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_DL_SUBCLASS;

 ev_msg.event_code = KEV_DL_IFCAP_CHANGED;
 strlcpy(&ev_data.if_name[0], ifp->if_name, IFNAMSIZ);
 ev_data.if_family = ifp->if_family;
 ev_data.if_unit = (u_int32_t)ifp->if_unit;
 ev_msg.dv[0].data_length = sizeof (struct net_event_data);
 ev_msg.dv[0].data_ptr = &ev_data;
 ev_msg.dv[1].data_length = 0;
 dlil_post_complete_msg(ifp, &ev_msg);

 return (error);
}
