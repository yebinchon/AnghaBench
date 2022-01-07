
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct net_event_data {TYPE_1__* dv; int if_unit; int if_family; int if_name; int kev_subclass; int kev_class; int vendor_code; scalar_t__ event_code; } ;
struct kev_msg {TYPE_1__* dv; int if_unit; int if_family; int if_name; int kev_subclass; int kev_class; int vendor_code; scalar_t__ event_code; } ;
typedef TYPE_2__* ifnet_t ;
typedef int ev_msg ;
typedef int ev_data ;
typedef int errno_t ;
struct TYPE_9__ {int if_eflags; int if_unit; int if_family; int if_name; } ;
struct TYPE_8__ {int data_length; struct net_event_data* data_ptr; } ;


 int EINVAL ;
 int IFEF_AWDL_RESTRICTED ;
 int IFNAMSIZ ;
 scalar_t__ KEV_DL_AWDL_RESTRICTED ;
 scalar_t__ KEV_DL_AWDL_UNRESTRICTED ;
 int KEV_DL_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int bzero (struct net_event_data*,int) ;
 int dlil_post_complete_msg (TYPE_2__*,struct net_event_data*) ;
 scalar_t__ ifnet_awdl_check_eflags (TYPE_2__*,int*,int*) ;
 int ifnet_lock_done (TYPE_2__*) ;
 int ifnet_lock_exclusive (TYPE_2__*) ;
 int strlcpy (int ,int ,int ) ;

errno_t
ifnet_set_eflags(ifnet_t interface, u_int32_t new_flags, u_int32_t mask)
{
 uint32_t oeflags;
 struct kev_msg ev_msg;
 struct net_event_data ev_data;

 if (interface == ((void*)0))
  return (EINVAL);

 bzero(&ev_msg, sizeof(ev_msg));
 ifnet_lock_exclusive(interface);



 if (ifnet_awdl_check_eflags(interface, &new_flags, &mask) != 0) {
  ifnet_lock_done(interface);
  return (EINVAL);
 }
 oeflags = interface->if_eflags;
 interface->if_eflags =
     (new_flags & mask) | (interface->if_eflags & ~mask);
 ifnet_lock_done(interface);
 if (interface->if_eflags & IFEF_AWDL_RESTRICTED &&
     !(oeflags & IFEF_AWDL_RESTRICTED)) {
  ev_msg.event_code = KEV_DL_AWDL_RESTRICTED;






 } else if (oeflags & IFEF_AWDL_RESTRICTED &&
     !(interface->if_eflags & IFEF_AWDL_RESTRICTED))
  ev_msg.event_code = KEV_DL_AWDL_UNRESTRICTED;




 if (ev_msg.event_code) {
  bzero(&ev_data, sizeof(ev_data));
  ev_msg.vendor_code = KEV_VENDOR_APPLE;
  ev_msg.kev_class = KEV_NETWORK_CLASS;
  ev_msg.kev_subclass = KEV_DL_SUBCLASS;
  strlcpy(ev_data.if_name, interface->if_name, IFNAMSIZ);
  ev_data.if_family = interface->if_family;
  ev_data.if_unit = interface->if_unit;
  ev_msg.dv[0].data_length = sizeof(struct net_event_data);
  ev_msg.dv[0].data_ptr = &ev_data;
  ev_msg.dv[1].data_length = 0;
  dlil_post_complete_msg(interface, &ev_msg);
 }

 return (0);
}
