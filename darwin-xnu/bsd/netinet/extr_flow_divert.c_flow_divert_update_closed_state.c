
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flow_divert_pcb {int flags; TYPE_1__* so; } ;
struct TYPE_2__ {int so_snd; } ;
typedef scalar_t__ Boolean ;


 int FLOW_DIVERT_CONNECT_STARTED ;
 int FLOW_DIVERT_READ_CLOSED ;
 int FLOW_DIVERT_TUNNEL_RD_CLOSED ;
 int FLOW_DIVERT_TUNNEL_WR_CLOSED ;
 int FLOW_DIVERT_WRITE_CLOSED ;
 int SHUT_RD ;
 int SHUT_WR ;
 int sbflush (int *) ;

__attribute__((used)) static void
flow_divert_update_closed_state(struct flow_divert_pcb *fd_cb, int how, Boolean tunnel)
{
 if (how != SHUT_RD) {
  fd_cb->flags |= FLOW_DIVERT_WRITE_CLOSED;
  if (tunnel || !(fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED)) {
   fd_cb->flags |= FLOW_DIVERT_TUNNEL_WR_CLOSED;

   sbflush(&fd_cb->so->so_snd);
  }
 }
 if (how != SHUT_WR) {
  fd_cb->flags |= FLOW_DIVERT_READ_CLOSED;
  if (tunnel || !(fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED)) {
   fd_cb->flags |= FLOW_DIVERT_TUNNEL_RD_CLOSED;
  }
 }
}
