
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockopt {scalar_t__ sopt_name; scalar_t__ sopt_dir; } ;
struct socket {int so_flags; int so_traffic_class; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int flags; } ;
typedef int errno_t ;
struct TYPE_4__ {int (* pr_ctloutput ) (struct socket*,struct sockopt*) ;} ;
struct TYPE_3__ {int (* pr_ctloutput ) (struct socket*,struct sockopt*) ;} ;


 int FLOW_DIVERT_CONNECT_STARTED ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 int SOF_FLOW_DIVERT ;
 scalar_t__ SOPT_SET ;
 scalar_t__ SO_TRAFFIC_CLASS ;
 int VERIFY (int) ;
 int flow_divert_send_traffic_class_update (struct flow_divert_pcb*,int ) ;
 TYPE_2__* g_tcp6_protosw ;
 TYPE_1__* g_tcp_protosw ;
 int stub1 (struct socket*,struct sockopt*) ;
 int stub2 (struct socket*,struct sockopt*) ;

__attribute__((used)) static errno_t
flow_divert_ctloutput(struct socket *so, struct sockopt *sopt)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 if (sopt->sopt_name == SO_TRAFFIC_CLASS) {
  if (sopt->sopt_dir == SOPT_SET && fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED) {
   flow_divert_send_traffic_class_update(fd_cb, so->so_traffic_class);
  }
 }

 if (SOCK_DOM(so) == PF_INET) {
  return g_tcp_protosw->pr_ctloutput(so, sopt);
 }





 return 0;
}
