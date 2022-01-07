
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int * so; int * group; int ref_count; } ;


 int FALSE ;
 int FDLOCK (struct flow_divert_pcb*) ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int ) ;
 int FDRELEASE (struct flow_divert_pcb*) ;
 int FDUNLOCK (struct flow_divert_pcb*) ;
 int LOG_INFO ;
 int SHUT_RDWR ;
 int SOF_FLOW_DIVERT ;
 int TRUE ;
 int VERIFY (int) ;
 int flow_divert_pcb_remove (struct flow_divert_pcb*) ;
 int flow_divert_send_buffered_data (struct flow_divert_pcb*,int ) ;
 int flow_divert_send_close_if_needed (struct flow_divert_pcb*) ;
 int flow_divert_update_closed_state (struct flow_divert_pcb*,int ,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

void
flow_divert_detach(struct socket *so)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 so->so_flags &= ~SOF_FLOW_DIVERT;
 so->so_fd_pcb = ((void*)0);

 FDLOG(LOG_INFO, fd_cb, "Detaching, ref count = %d", fd_cb->ref_count);

 if (fd_cb->group != ((void*)0)) {

  flow_divert_send_buffered_data(fd_cb, TRUE);

  flow_divert_update_closed_state(fd_cb, SHUT_RDWR, FALSE);
  flow_divert_send_close_if_needed(fd_cb);

  flow_divert_pcb_remove(fd_cb);
 }

 socket_unlock(so, 0);
 FDLOCK(fd_cb);
 fd_cb->so = ((void*)0);
 FDUNLOCK(fd_cb);
 socket_lock(so, 0);

 FDRELEASE(fd_cb);
}
