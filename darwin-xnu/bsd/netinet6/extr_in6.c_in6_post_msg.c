
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* u_int32_t ;
struct TYPE_5__ {void* if_unit; int if_family; int * if_name; } ;
struct TYPE_4__ {int ia6t_pltime; int ia6t_vltime; int ia6t_preferred; int ia6t_expire; } ;
struct kev_msg {TYPE_3__* dv; int ia_mac; TYPE_2__ link_data; TYPE_1__ ia_lifetime; void* ia6_flags; int ia_plen; int ia_prefixmask; int ia_dstaddr; int ia_net; int ia_addr; void* event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kev_in6_data {TYPE_3__* dv; int ia_mac; TYPE_2__ link_data; TYPE_1__ ia_lifetime; void* ia6_flags; int ia_plen; int ia_prefixmask; int ia_dstaddr; int ia_net; int ia_addr; void* event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct in6_ifaddr {int ia_ifa; scalar_t__ ia6_flags; int ia_plen; int ia_prefixmask; int ia_dstaddr; int ia_net; int ia_addr; } ;
struct in6_addrlifetime {int ia6t_pltime; int ia6t_vltime; int ia6t_preferred; int ia6t_expire; } ;
struct ifnet {scalar_t__ if_unit; int if_family; int if_name; } ;
typedef int in6_event_data ;
struct TYPE_6__ {int data_length; struct kev_msg* data_ptr; } ;


 int IFA_LOCK (int *) ;
 int IFA_UNLOCK (int *) ;
 int IFNAMSIZ ;
 int KEV_INET6_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int bzero (struct kev_msg*,int) ;
 int dlil_post_complete_msg (int *,struct kev_msg*) ;
 int in6ifa_getlifetime (struct in6_ifaddr*,struct in6_addrlifetime*,int) ;
 int memcpy (int *,int *,int) ;
 int strlcpy (int *,int ,int ) ;

void
in6_post_msg(struct ifnet *ifp, u_int32_t event_code, struct in6_ifaddr *ifa,
    uint8_t *mac)
{
 struct kev_msg ev_msg;
 struct kev_in6_data in6_event_data;
 struct in6_addrlifetime ia6_lt;

 bzero(&in6_event_data, sizeof (struct kev_in6_data));
 bzero(&ev_msg, sizeof (struct kev_msg));
 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_INET6_SUBCLASS;
 ev_msg.event_code = event_code;

 if (ifa) {
  IFA_LOCK(&ifa->ia_ifa);
  in6_event_data.ia_addr = ifa->ia_addr;
  in6_event_data.ia_net = ifa->ia_net;
  in6_event_data.ia_dstaddr = ifa->ia_dstaddr;
  in6_event_data.ia_prefixmask = ifa->ia_prefixmask;
  in6_event_data.ia_plen = ifa->ia_plen;
  in6_event_data.ia6_flags = (u_int32_t)ifa->ia6_flags;


  in6ifa_getlifetime(ifa, &ia6_lt, 1);
  in6_event_data.ia_lifetime.ia6t_expire = ia6_lt.ia6t_expire;
  in6_event_data.ia_lifetime.ia6t_preferred = ia6_lt.ia6t_preferred;
  in6_event_data.ia_lifetime.ia6t_vltime = ia6_lt.ia6t_vltime;
  in6_event_data.ia_lifetime.ia6t_pltime = ia6_lt.ia6t_pltime;
  IFA_UNLOCK(&ifa->ia_ifa);
 }

 if (ifp != ((void*)0)) {
  (void) strlcpy(&in6_event_data.link_data.if_name[0],
      ifp->if_name, IFNAMSIZ);
  in6_event_data.link_data.if_family = ifp->if_family;
  in6_event_data.link_data.if_unit = (u_int32_t)ifp->if_unit;
 }

 if (mac != ((void*)0))
  memcpy(&in6_event_data.ia_mac, mac,
      sizeof(in6_event_data.ia_mac));

 ev_msg.dv[0].data_ptr = &in6_event_data;
 ev_msg.dv[0].data_length = sizeof (in6_event_data);
 ev_msg.dv[1].data_length = 0;

 dlil_post_complete_msg(((void*)0), &ev_msg);
}
