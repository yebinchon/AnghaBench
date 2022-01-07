
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {int * inp_last_outifp; TYPE_2__ inp_laddr; TYPE_1__ inp_faddr; } ;


 int EINVAL ;
 int ENOTCONN ;
 int EPROTOTYPE ;
 scalar_t__ INADDR_ANY ;
 int SS_ISCONNECTED ;
 int in_pcbdisconnect (struct inpcb*) ;
 int inp_reset_fc_state (struct inpcb*) ;
 scalar_t__ necp_socket_should_use_flow_divert (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
udp_disconnect(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 if (inp == ((void*)0)



  )
  return (inp == ((void*)0) ? EINVAL : EPROTOTYPE);
 if (inp->inp_faddr.s_addr == INADDR_ANY)
  return (ENOTCONN);

 in_pcbdisconnect(inp);


 inp_reset_fc_state(inp);

 inp->inp_laddr.s_addr = INADDR_ANY;
 so->so_state &= ~SS_ISCONNECTED;
 inp->inp_last_outifp = ((void*)0);

 return (0);
}
