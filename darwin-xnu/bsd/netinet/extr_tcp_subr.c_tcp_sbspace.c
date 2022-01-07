
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct tcpcb {scalar_t__ t_maxseg; int t_flags; TYPE_1__* t_inpcb; } ;
struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_cc; scalar_t__ sb_mbmax; scalar_t__ sb_mbcnt; } ;
struct socket {int so_flags; TYPE_2__* so_msg_state; struct sockbuf so_rcv; } ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ msg_uno_bytes; } ;
struct TYPE_3__ {struct socket* inp_socket; } ;


 int SOF_ENABLE_MSGS ;
 int TF_SLOWLINK ;
 scalar_t__ cfil_sock_data_space (struct sockbuf*) ;
 scalar_t__ imin (scalar_t__,scalar_t__) ;
 scalar_t__ slowlink_wsize ;
 int tcp_sbrcv_grow_rwin (struct tcpcb*,struct sockbuf*) ;

int32_t
tcp_sbspace(struct tcpcb *tp)
{
 struct socket *so = tp->t_inpcb->inp_socket;
 struct sockbuf *sb = &so->so_rcv;
 u_int32_t rcvbuf;
 int32_t space;
 int32_t pending = 0;

 tcp_sbrcv_grow_rwin(tp, sb);


 rcvbuf = sb->sb_hiwat;
 if (so->so_flags & SOF_ENABLE_MSGS)
  rcvbuf = rcvbuf - so->so_msg_state->msg_uno_bytes;

 space = ((int32_t) imin((rcvbuf - sb->sb_cc),
  (sb->sb_mbmax - sb->sb_mbcnt)));
 if (space < 0)
  space = 0;





 if (pending > space)
  space = 0;
 else
  space -= pending;







 if (space < tp->t_maxseg)
  return (space);



 if (((tp->t_flags & TF_SLOWLINK) != 0) && slowlink_wsize > 0)
  return (imin(space, slowlink_wsize));

 return (space);
}
