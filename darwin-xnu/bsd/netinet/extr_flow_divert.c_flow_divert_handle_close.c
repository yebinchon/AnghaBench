
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct flow_divert_pcb {TYPE_1__* so; } ;
typedef int mbuf_t ;
typedef int how ;
typedef int close_error ;
struct TYPE_6__ {void* so_error; } ;


 int FDLOCK (struct flow_divert_pcb*) ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FDUNLOCK (struct flow_divert_pcb*) ;
 int FLOW_DIVERT_TLV_ERROR_CODE ;
 int FLOW_DIVERT_TLV_HOW ;
 int LOG_ERR ;
 int LOG_INFO ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 int SHUT_WR ;
 int TRUE ;
 int flow_divert_disconnect_socket (TYPE_1__*) ;
 int flow_divert_packet_get_tlv (int ,int,int ,int,int*,int *) ;
 int flow_divert_tunnel_how_closed (struct flow_divert_pcb*) ;
 int flow_divert_update_closed_state (struct flow_divert_pcb*,int,int ) ;
 void* ntohl (int) ;
 int socantrcvmore (TYPE_1__*) ;
 int socantsendmore (TYPE_1__*) ;
 int socket_lock (TYPE_1__*,int ) ;
 int socket_unlock (TYPE_1__*,int ) ;

__attribute__((used)) static void
flow_divert_handle_close(struct flow_divert_pcb *fd_cb, mbuf_t packet, int offset)
{
 uint32_t close_error;
 int error = 0;
 int how;

 error = flow_divert_packet_get_tlv(packet, offset, FLOW_DIVERT_TLV_ERROR_CODE, sizeof(close_error), &close_error, ((void*)0));
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to get the close error: %d", error);
  return;
 }

 error = flow_divert_packet_get_tlv(packet, offset, FLOW_DIVERT_TLV_HOW, sizeof(how), &how, ((void*)0));
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to get the close how flag: %d", error);
  return;
 }

 how = ntohl(how);

 FDLOG(LOG_INFO, fd_cb, "close received, how = %d", how);

 FDLOCK(fd_cb);
 if (fd_cb->so != ((void*)0)) {
  socket_lock(fd_cb->so, 0);

  fd_cb->so->so_error = ntohl(close_error);

  flow_divert_update_closed_state(fd_cb, how, TRUE);

  how = flow_divert_tunnel_how_closed(fd_cb);
  if (how == SHUT_RDWR) {
   flow_divert_disconnect_socket(fd_cb->so);
  } else if (how == SHUT_RD) {
   socantrcvmore(fd_cb->so);
  } else if (how == SHUT_WR) {
   socantsendmore(fd_cb->so);
  }

  socket_unlock(fd_cb->so, 0);
 }
 FDUNLOCK(fd_cb);
}
