
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_14__ {int sb_cc; int sb_hiwat; } ;
struct socket {int so_flags; int so_traffic_class; TYPE_6__ so_rcv; int * e_uuid; int e_pid; int e_upid; int * so_vuuid; int * last_uuid; int last_pid; int last_upid; } ;
struct TYPE_12__ {int v4; int v6; } ;
struct TYPE_10__ {int v4; int v6; } ;
struct nstat_tucookie {int cached; scalar_t__* pname; int if_index; int ifnet_properties; TYPE_4__ remote; TYPE_2__ local; struct inpcb* inp; } ;
struct inpcb {int inp_vflag; int inp_start_timestamp; struct socket* inp_socket; TYPE_5__* inp_last_outifp; int inp_fport; int inp_faddr; int inp_lport; int inp_laddr; int in6p_faddr; int in6p_laddr; } ;
struct TYPE_11__ {int v4; int v6; } ;
struct TYPE_9__ {int v4; int v6; } ;
struct TYPE_15__ {scalar_t__* pname; int timestamp; int start_timestamp; int activity_bitmap; int traffic_class; int rcvbufused; int rcvbufsize; int * uuid; int * euuid; int pid; int epid; int upid; int eupid; int * vuuid; int ifindex; int ifnet_properties; TYPE_3__ remote; TYPE_1__ local; } ;
typedef TYPE_7__ nstat_udp_descriptor ;
typedef scalar_t__ nstat_provider_cookie_t ;
typedef int errno_t ;
struct TYPE_13__ {int if_index; } ;


 int EINVAL ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int SOF_DELEGATED ;
 int bzero (TYPE_7__*,int) ;
 int in6_ip6_to_sockaddr (int *,int ,int *,int) ;
 int inp_get_activity_bitmap (struct inpcb*,int *) ;
 int mach_continuous_time () ;
 int memcpy (int *,int *,int) ;
 int nstat_inpcb_to_flags (struct inpcb*) ;
 int nstat_ip_to_sockaddr (int *,int ,int *,int) ;
 scalar_t__ nstat_udp_gone (scalar_t__) ;
 int proc_name (int ,scalar_t__*,int) ;
 int strlcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static errno_t
nstat_udp_copy_descriptor(
 nstat_provider_cookie_t cookie,
 void *data,
 u_int32_t len)
{
 if (len < sizeof(nstat_udp_descriptor))
 {
  return EINVAL;
 }

 if (nstat_udp_gone(cookie))
  return EINVAL;

 struct nstat_tucookie *tucookie =
     (struct nstat_tucookie *)cookie;
 nstat_udp_descriptor *desc = (nstat_udp_descriptor*)data;
 struct inpcb *inp = tucookie->inp;

 bzero(desc, sizeof(*desc));

 if (tucookie->cached == 0) {
  if (inp->inp_vflag & INP_IPV6)
  {
   in6_ip6_to_sockaddr(&inp->in6p_laddr, inp->inp_lport,
    &desc->local.v6, sizeof(desc->local.v6));
   in6_ip6_to_sockaddr(&inp->in6p_faddr, inp->inp_fport,
    &desc->remote.v6, sizeof(desc->remote.v6));
  }
  else if (inp->inp_vflag & INP_IPV4)
  {
   nstat_ip_to_sockaddr(&inp->inp_laddr, inp->inp_lport,
    &desc->local.v4, sizeof(desc->local.v4));
   nstat_ip_to_sockaddr(&inp->inp_faddr, inp->inp_fport,
    &desc->remote.v4, sizeof(desc->remote.v4));
  }
  desc->ifnet_properties = nstat_inpcb_to_flags(inp);
 }
 else
 {
  if (inp->inp_vflag & INP_IPV6)
  {
   memcpy(&desc->local.v6, &tucookie->local.v6,
       sizeof(desc->local.v6));
   memcpy(&desc->remote.v6, &tucookie->remote.v6,
       sizeof(desc->remote.v6));
  }
  else if (inp->inp_vflag & INP_IPV4)
  {
   memcpy(&desc->local.v4, &tucookie->local.v4,
       sizeof(desc->local.v4));
   memcpy(&desc->remote.v4, &tucookie->remote.v4,
       sizeof(desc->remote.v4));
  }
  desc->ifnet_properties = tucookie->ifnet_properties;
 }

 if (inp->inp_last_outifp)
  desc->ifindex = inp->inp_last_outifp->if_index;
 else
  desc->ifindex = tucookie->if_index;

 struct socket *so = inp->inp_socket;
 if (so)
 {


  desc->upid = so->last_upid;
  desc->pid = so->last_pid;
  proc_name(desc->pid, desc->pname, sizeof(desc->pname));
  if (desc->pname[0] == 0)
  {
   strlcpy(desc->pname, tucookie->pname,
       sizeof(desc->pname));
  }
  else
  {
   desc->pname[sizeof(desc->pname) - 1] = 0;
   strlcpy(tucookie->pname, desc->pname,
       sizeof(tucookie->pname));
  }
  memcpy(desc->uuid, so->last_uuid, sizeof(so->last_uuid));
  memcpy(desc->vuuid, so->so_vuuid, sizeof(so->so_vuuid));
  if (so->so_flags & SOF_DELEGATED) {
   desc->eupid = so->e_upid;
   desc->epid = so->e_pid;
   memcpy(desc->euuid, so->e_uuid, sizeof(so->e_uuid));
  } else {
   desc->eupid = desc->upid;
   desc->epid = desc->pid;
   memcpy(desc->euuid, desc->uuid, sizeof(desc->uuid));
  }
  desc->rcvbufsize = so->so_rcv.sb_hiwat;
  desc->rcvbufused = so->so_rcv.sb_cc;
  desc->traffic_class = so->so_traffic_class;
  inp_get_activity_bitmap(inp, &desc->activity_bitmap);
  desc->start_timestamp = inp->inp_start_timestamp;
  desc->timestamp = mach_continuous_time();
 }

 return 0;
}
