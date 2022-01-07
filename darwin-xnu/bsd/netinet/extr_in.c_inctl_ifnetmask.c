
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32_t ;
struct TYPE_7__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_9__ {int if_unit; int if_family; int * if_name; } ;
struct kev_msg {TYPE_4__* dv; TYPE_3__ link_data; int ia_netbroadcast; int ia_subnetmask; int ia_subnet; int ia_netmask; int ia_net; int ia_addr; TYPE_1__ ia_dstaddr; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kev_in_data {TYPE_4__* dv; TYPE_3__ link_data; int ia_netbroadcast; int ia_subnetmask; int ia_subnet; int ia_netmask; int ia_net; int ia_addr; TYPE_1__ ia_dstaddr; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct TYPE_11__ {scalar_t__ ifa_dstaddr; } ;
struct TYPE_8__ {int sin_addr; } ;
struct in_ifaddr {TYPE_5__ ia_ifa; int ia_netbroadcast; int ia_subnetmask; int ia_subnet; int ia_netmask; int ia_net; TYPE_2__ ia_addr; struct sockaddr_in ia_sockmask; } ;
struct ifreq {struct sockaddr_in ifr_addr; } ;
struct ifnet {int if_unit; int if_family; int if_name; } ;
typedef int mask ;
typedef int in_addr_t ;
struct TYPE_10__ {int data_length; struct kev_msg* data_ptr; } ;


 int EADDRNOTAVAIL ;
 int IFA_LOCK (TYPE_5__*) ;
 int IFA_UNLOCK (TYPE_5__*) ;
 int IFNAMSIZ ;
 int INADDR_ANY ;
 int KEV_INET_SIFNETMASK ;
 int KEV_INET_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;


 int VERIFY (int ) ;
 int bcopy (struct sockaddr_in*,struct sockaddr_in*,int) ;
 int bzero (struct kev_msg*,int) ;
 int dlil_post_complete_msg (struct ifnet*,struct kev_msg*) ;
 int ntohl (int ) ;
 int strlcpy (int *,int ,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
inctl_ifnetmask(struct ifnet *ifp, struct in_ifaddr *ia, u_long cmd,
    struct ifreq *ifr)
{
 struct kev_in_data in_event_data;
 struct kev_msg ev_msg;
 struct sockaddr_in mask;
 int error = 0;

 VERIFY(ifp != ((void*)0));

 bzero(&in_event_data, sizeof (struct kev_in_data));
 bzero(&ev_msg, sizeof (struct kev_msg));

 switch (cmd) {
 case 129:
  if (ia == ((void*)0)) {
   error = EADDRNOTAVAIL;
   break;
  }
  IFA_LOCK(&ia->ia_ifa);
  bcopy(&ia->ia_sockmask, &ifr->ifr_addr, sizeof (mask));
  IFA_UNLOCK(&ia->ia_ifa);
  break;

 case 128: {
  in_addr_t i;

  bcopy(&ifr->ifr_addr, &mask, sizeof (mask));
  i = mask.sin_addr.s_addr;

  VERIFY(ia != ((void*)0));
  IFA_LOCK(&ia->ia_ifa);
  ia->ia_subnetmask = ntohl(ia->ia_sockmask.sin_addr.s_addr = i);
  ev_msg.vendor_code = KEV_VENDOR_APPLE;
  ev_msg.kev_class = KEV_NETWORK_CLASS;
  ev_msg.kev_subclass = KEV_INET_SUBCLASS;

  ev_msg.event_code = KEV_INET_SIFNETMASK;

  if (ia->ia_ifa.ifa_dstaddr) {
   in_event_data.ia_dstaddr = ((struct sockaddr_in *)
       (void *)ia->ia_ifa.ifa_dstaddr)->sin_addr;
  } else {
   in_event_data.ia_dstaddr.s_addr = INADDR_ANY;
  }
  in_event_data.ia_addr = ia->ia_addr.sin_addr;
  in_event_data.ia_net = ia->ia_net;
  in_event_data.ia_netmask = ia->ia_netmask;
  in_event_data.ia_subnet = ia->ia_subnet;
  in_event_data.ia_subnetmask = ia->ia_subnetmask;
  in_event_data.ia_netbroadcast = ia->ia_netbroadcast;
  IFA_UNLOCK(&ia->ia_ifa);
  (void) strlcpy(&in_event_data.link_data.if_name[0],
      ifp->if_name, IFNAMSIZ);
  in_event_data.link_data.if_family = ifp->if_family;
  in_event_data.link_data.if_unit = (u_int32_t)ifp->if_unit;

  ev_msg.dv[0].data_ptr = &in_event_data;
  ev_msg.dv[0].data_length = sizeof (struct kev_in_data);
  ev_msg.dv[1].data_length = 0;

  dlil_post_complete_msg(ifp, &ev_msg);
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
