
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct socket {int so_flags1; int last_pid; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {int inp_flags; scalar_t__ inp_flowhash; int inp_flow; int in6p_flags; int necp_client_uuid; int inp_vflag; int in6p_faddr; TYPE_1__ inp_faddr; } ;
struct TYPE_4__ {int nas_socket_inet6_dgram_connected; int nas_socket_inet_dgram_connected; } ;


 int EINVAL ;
 int EISCONN ;
 int ENETDOWN ;
 int IFSCOPE_NONE ;
 int IN6P_AUTOFLOWLABEL ;
 int IN6P_IPV6_V6ONLY ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 scalar_t__ INADDR_ANY ;
 int INC_ATOMIC_INT64_LIM (int ) ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int IPV6_FLOWLABEL_MASK ;
 int SOF1_CONNECT_COUNTED ;
 int flow_divert_connect_out (struct socket*,struct sockaddr*,struct proc*) ;
 int flow_divert_pcb_init (struct socket*,scalar_t__) ;
 int htonl (scalar_t__) ;
 int in6_pcbconnect (struct inpcb*,struct sockaddr*,struct proc*) ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 int in_pcbconnect (struct inpcb*,struct sockaddr*,struct proc*,int ,int *) ;
 scalar_t__ inp_calc_flowhash (struct inpcb*) ;
 scalar_t__ ip6_mapped_addr_on ;
 int necp_client_assign_from_socket (int ,int ,struct inpcb*) ;
 scalar_t__ necp_socket_get_flow_divert_control_unit (struct inpcb*) ;
 int necp_socket_should_use_flow_divert (struct inpcb*) ;
 TYPE_2__ net_api_stats ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int uuid_is_null (int ) ;

int
udp6_connect(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 struct inpcb *inp;
 int error;




 inp = sotoinpcb(so);
 if (inp == ((void*)0))
  return (EINVAL);





 if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
  struct sockaddr_in6 *sin6_p;

  sin6_p = (struct sockaddr_in6 *)(void *)nam;
  if (IN6_IS_ADDR_V4MAPPED(&sin6_p->sin6_addr)) {
   struct sockaddr_in sin;

   if (inp->inp_faddr.s_addr != INADDR_ANY)
    return (EISCONN);

   if (!(so->so_flags1 & SOF1_CONNECT_COUNTED)) {
    so->so_flags1 |= SOF1_CONNECT_COUNTED;
    INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet_dgram_connected);
   }

   in6_sin6_2_sin(&sin, sin6_p);





   error = in_pcbconnect(inp, (struct sockaddr *)&sin,
       p, IFSCOPE_NONE, ((void*)0));
   if (error == 0) {
    inp->inp_vflag |= INP_IPV4;
    inp->inp_vflag &= ~INP_IPV6;
    soisconnected(so);
   }
   return (error);
  }
 }

 if (!IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_faddr))
  return (EISCONN);

 if (!(so->so_flags1 & SOF1_CONNECT_COUNTED)) {
  so->so_flags1 |= SOF1_CONNECT_COUNTED;
  INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet6_dgram_connected);
 }
 error = in6_pcbconnect(inp, nam, p);
 if (error == 0) {

  if (ip6_mapped_addr_on ||
      (inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
   inp->inp_vflag &= ~INP_IPV4;
   inp->inp_vflag |= INP_IPV6;
  }
  soisconnected(so);
  if (inp->inp_flowhash == 0)
   inp->inp_flowhash = inp_calc_flowhash(inp);

  if (inp->inp_flow == 0 &&
      inp->in6p_flags & IN6P_AUTOFLOWLABEL) {
   inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
   inp->inp_flow |=
       (htonl(inp->inp_flowhash) & IPV6_FLOWLABEL_MASK);
  }
 }
 return (error);
}
