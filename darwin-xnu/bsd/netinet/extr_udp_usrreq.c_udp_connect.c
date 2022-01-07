
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct socket {int so_flags1; int last_pid; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {scalar_t__ inp_flowhash; int necp_client_uuid; TYPE_1__ inp_faddr; } ;
struct TYPE_4__ {int nas_socket_inet_dgram_connected; } ;


 int EINVAL ;
 int EISCONN ;
 int ENETDOWN ;
 int IFSCOPE_NONE ;
 scalar_t__ INADDR_ANY ;
 int INC_ATOMIC_INT64_LIM (int ) ;
 int SOF1_CONNECT_COUNTED ;
 int flow_divert_connect_out (struct socket*,struct sockaddr*,struct proc*) ;
 int flow_divert_pcb_init (struct socket*,scalar_t__) ;
 int in_pcbconnect (struct inpcb*,struct sockaddr*,struct proc*,int ,int *) ;
 scalar_t__ inp_calc_flowhash (struct inpcb*) ;
 int necp_client_assign_from_socket (int ,int ,struct inpcb*) ;
 scalar_t__ necp_socket_get_flow_divert_control_unit (struct inpcb*) ;
 scalar_t__ necp_socket_should_use_flow_divert (struct inpcb*) ;
 TYPE_2__ net_api_stats ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int uuid_is_null (int ) ;

int
udp_connect(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 struct inpcb *inp;
 int error;

 inp = sotoinpcb(so);
 if (inp == ((void*)0))
  return (EINVAL);
 if (inp->inp_faddr.s_addr != INADDR_ANY)
  return (EISCONN);

 if (!(so->so_flags1 & SOF1_CONNECT_COUNTED)) {
  so->so_flags1 |= SOF1_CONNECT_COUNTED;
  INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet_dgram_connected);
 }
 error = in_pcbconnect(inp, nam, p, IFSCOPE_NONE, ((void*)0));
 if (error == 0) {
  soisconnected(so);
  if (inp->inp_flowhash == 0)
   inp->inp_flowhash = inp_calc_flowhash(inp);
 }
 return (error);
}
