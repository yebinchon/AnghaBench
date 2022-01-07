
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {scalar_t__ inp_sndinprog_cnt; int inp_flags; struct socket* inp_socket; } ;


 int INP_FC_FEEDBACK ;
 int INP_WAIT_FOR_IF_FEEDBACK (struct inpcb*) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 int VERIFY (int ) ;
 int WNT_RELEASE ;
 scalar_t__ WNT_STOPUSING ;
 scalar_t__ in_pcb_checkstate (struct inpcb*,int ,int) ;
 int inp_fc_unthrottle_tcp (struct inpcb*) ;
 int inp_reset_fc_state (struct inpcb*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static void
inp_fc_feedback(struct inpcb *inp)
{
 struct socket *so = inp->inp_socket;


 VERIFY(so != ((void*)0));
 socket_lock(so, 1);

 if (in_pcb_checkstate(inp, WNT_RELEASE, 1) == WNT_STOPUSING) {
  socket_unlock(so, 1);
  return;
 }

 if (inp->inp_sndinprog_cnt > 0)
  inp->inp_flags |= INP_FC_FEEDBACK;






 if (!INP_WAIT_FOR_IF_FEEDBACK(inp)) {
  socket_unlock(so, 1);
  return;
 }
 inp_reset_fc_state(inp);

 if (SOCK_TYPE(so) == SOCK_STREAM)
  inp_fc_unthrottle_tcp(inp);

 socket_unlock(so, 1);
}
