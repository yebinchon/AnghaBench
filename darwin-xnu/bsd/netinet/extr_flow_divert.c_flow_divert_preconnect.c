
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int flags; int * connect_packet; } ;
typedef int * mbuf_t ;


 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int FLOW_DIVERT_CONNECT_STARTED ;
 int LOG_INFO ;
 int TRUE ;
 int flow_divert_send_packet (struct flow_divert_pcb*,int *,int ) ;
 int mbuf_freem (int *) ;
 int soclearfastopen (struct socket*) ;

__attribute__((used)) static int
flow_divert_preconnect(struct socket *so)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
 int error = 0;

 if (!(fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED) && fd_cb->connect_packet != ((void*)0)) {
  FDLOG0(LOG_INFO, fd_cb, "Pre-connect read: sending saved connect packet");
  mbuf_t connect_packet = fd_cb->connect_packet;
  fd_cb->connect_packet = ((void*)0);

  error = flow_divert_send_packet(fd_cb, connect_packet, TRUE);
  if (error) {
   mbuf_freem(connect_packet);
  }

  fd_cb->flags |= FLOW_DIVERT_CONNECT_STARTED;
 }

 soclearfastopen(so);

 return error;
}
