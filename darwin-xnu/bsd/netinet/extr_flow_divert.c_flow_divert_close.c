
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; int so_rcv; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int dummy; } ;


 int FALSE ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int LOG_INFO ;
 int SHUT_RDWR ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 int SOF_FLOW_DIVERT ;
 int TRUE ;
 int VERIFY (int) ;
 int flow_divert_pcb_remove (struct flow_divert_pcb*) ;
 int flow_divert_send_buffered_data (struct flow_divert_pcb*,int ) ;
 int flow_divert_send_close_if_needed (struct flow_divert_pcb*) ;
 int flow_divert_update_closed_state (struct flow_divert_pcb*,int ,int ) ;
 int sbflush (int *) ;
 int soisdisconnecting (struct socket*) ;

__attribute__((used)) static int
flow_divert_close(struct socket *so)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 FDLOG0(LOG_INFO, fd_cb, "Closing");

 if (SOCK_TYPE(so) == SOCK_STREAM) {
  soisdisconnecting(so);
  sbflush(&so->so_rcv);
 }

 flow_divert_send_buffered_data(fd_cb, TRUE);
 flow_divert_update_closed_state(fd_cb, SHUT_RDWR, FALSE);
 flow_divert_send_close_if_needed(fd_cb);


 flow_divert_pcb_remove(fd_cb);

 return 0;
}
