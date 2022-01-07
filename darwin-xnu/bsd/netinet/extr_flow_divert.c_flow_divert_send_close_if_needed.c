
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct flow_divert_pcb {int flags; TYPE_2__* so; } ;
struct TYPE_3__ {scalar_t__ sb_cc; } ;
struct TYPE_4__ {TYPE_1__ so_snd; } ;


 scalar_t__ ENOBUFS ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FLOW_DIVERT_READ_CLOSED ;
 int FLOW_DIVERT_TUNNEL_RD_CLOSED ;
 int FLOW_DIVERT_TUNNEL_WR_CLOSED ;
 int FLOW_DIVERT_WRITE_CLOSED ;
 int LOG_INFO ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 int SHUT_WR ;
 int flow_divert_disconnect_socket (TYPE_2__*) ;
 scalar_t__ flow_divert_send_close (struct flow_divert_pcb*,int) ;
 int flow_divert_tunnel_how_closed (struct flow_divert_pcb*) ;

__attribute__((used)) static void
flow_divert_send_close_if_needed(struct flow_divert_pcb *fd_cb)
{
 int how = -1;


 if (fd_cb->so->so_snd.sb_cc == 0) {
  if ((fd_cb->flags & (FLOW_DIVERT_READ_CLOSED|FLOW_DIVERT_TUNNEL_RD_CLOSED)) == FLOW_DIVERT_READ_CLOSED) {

   how = SHUT_RD;
  }
  if ((fd_cb->flags & (FLOW_DIVERT_WRITE_CLOSED|FLOW_DIVERT_TUNNEL_WR_CLOSED)) == FLOW_DIVERT_WRITE_CLOSED) {

   if (how == SHUT_RD) {
    how = SHUT_RDWR;
   } else {
    how = SHUT_WR;
   }
  }
 }

 if (how != -1) {
  FDLOG(LOG_INFO, fd_cb, "sending close, how = %d", how);
  if (flow_divert_send_close(fd_cb, how) != ENOBUFS) {

   if (how != SHUT_RD) {
    fd_cb->flags |= FLOW_DIVERT_TUNNEL_WR_CLOSED;
   }
   if (how != SHUT_WR) {
    fd_cb->flags |= FLOW_DIVERT_TUNNEL_RD_CLOSED;
   }
  }
 }

 if (flow_divert_tunnel_how_closed(fd_cb) == SHUT_RDWR) {
  flow_divert_disconnect_socket(fd_cb->so);
 }
}
