
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int dummy; } ;


 int FALSE ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int LOG_INFO ;
 int SHUT_WR ;
 int SOF_FLOW_DIVERT ;
 int VERIFY (int) ;
 int flow_divert_send_close_if_needed (struct flow_divert_pcb*) ;
 int flow_divert_update_closed_state (struct flow_divert_pcb*,int ,int ) ;
 int socantsendmore (struct socket*) ;

__attribute__((used)) static int
flow_divert_shutdown(struct socket *so)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 FDLOG0(LOG_INFO, fd_cb, "Can't send more");

 socantsendmore(so);

 flow_divert_update_closed_state(fd_cb, SHUT_WR, FALSE);
 flow_divert_send_close_if_needed(fd_cb);

 return 0;
}
