
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_divert_pcb {int flags; } ;


 int FLOW_DIVERT_TUNNEL_RD_CLOSED ;
 int FLOW_DIVERT_TUNNEL_WR_CLOSED ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 int SHUT_WR ;

__attribute__((used)) static int
flow_divert_tunnel_how_closed(struct flow_divert_pcb *fd_cb)
{
 if ((fd_cb->flags & (FLOW_DIVERT_TUNNEL_RD_CLOSED|FLOW_DIVERT_TUNNEL_WR_CLOSED)) ==
   (FLOW_DIVERT_TUNNEL_RD_CLOSED|FLOW_DIVERT_TUNNEL_WR_CLOSED))
 {
  return SHUT_RDWR;
 } else if (fd_cb->flags & FLOW_DIVERT_TUNNEL_RD_CLOSED) {
  return SHUT_RD;
 } else if (fd_cb->flags & FLOW_DIVERT_TUNNEL_WR_CLOSED) {
  return SHUT_WR;
 }

 return -1;
}
