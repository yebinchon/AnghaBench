
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
struct net_event_data {int if_unit; TYPE_1__* dv; int if_family; int * if_name; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kev_msg {int if_unit; TYPE_1__* dv; int if_family; int * if_name; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_9__ {scalar_t__ if_unit; int if_family; int if_name; int if_xflags; } ;
struct TYPE_8__ {int data_length; struct net_event_data* data_ptr; } ;


 int EINVAL ;
 int IFNAMSIZ ;
 int IFXF_WAKE_ON_MAGIC_PACKET ;
 int IF_WAKE_ON_MAGIC_PACKET ;
 int IF_WAKE_VALID_FLAGS ;
 int KEV_DL_SUBCLASS ;
 int KEV_DL_WAKEFLAGS_CHANGED ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int bzero (struct net_event_data*,int) ;
 int dlil_post_complete_msg (TYPE_2__*,struct net_event_data*) ;
 int ifnet_lock_done (TYPE_2__*) ;
 int ifnet_lock_exclusive (TYPE_2__*) ;
 int ifnet_touch_lastchange (TYPE_2__*) ;
 int strlcpy (int *,int ,int ) ;

errno_t
ifnet_set_wake_flags(ifnet_t interface, u_int32_t properties, u_int32_t mask)
{
 struct kev_msg ev_msg;
 struct net_event_data ev_data;

 bzero(&ev_data, sizeof (struct net_event_data));
 bzero(&ev_msg, sizeof (struct kev_msg));

 if (interface == ((void*)0))
  return (EINVAL);


 if ((properties & mask) & ~IF_WAKE_VALID_FLAGS)
  return (EINVAL);

 ifnet_lock_exclusive(interface);

 if (mask & IF_WAKE_ON_MAGIC_PACKET) {
  if (properties & IF_WAKE_ON_MAGIC_PACKET)
   interface->if_xflags |= IFXF_WAKE_ON_MAGIC_PACKET;
  else
   interface->if_xflags &= ~IFXF_WAKE_ON_MAGIC_PACKET;
 }

 ifnet_lock_done(interface);

 (void) ifnet_touch_lastchange(interface);


 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_DL_SUBCLASS;

 ev_msg.event_code = KEV_DL_WAKEFLAGS_CHANGED;
 strlcpy(&ev_data.if_name[0], interface->if_name, IFNAMSIZ);
 ev_data.if_family = interface->if_family;
 ev_data.if_unit = (u_int32_t)interface->if_unit;
 ev_msg.dv[0].data_length = sizeof (struct net_event_data);
 ev_msg.dv[0].data_ptr = &ev_data;
 ev_msg.dv[1].data_length = 0;
 dlil_post_complete_msg(interface, &ev_msg);

 return (0);
}
