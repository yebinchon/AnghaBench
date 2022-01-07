
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flow_divert_pcb {int send_window; int * so; } ;
typedef int read_count ;
typedef int mbuf_t ;


 int FALSE ;
 int FDLOCK (struct flow_divert_pcb*) ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FDUNLOCK (struct flow_divert_pcb*) ;
 int FLOW_DIVERT_TLV_READ_COUNT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int flow_divert_packet_get_tlv (int ,int,int ,int,int *,int *) ;
 int flow_divert_send_buffered_data (struct flow_divert_pcb*,int ) ;
 int ntohl (int ) ;
 int socket_lock (int *,int ) ;
 int socket_unlock (int *,int ) ;

__attribute__((used)) static void
flow_divert_handle_read_notification(struct flow_divert_pcb *fd_cb, mbuf_t packet, int offset)
{
 uint32_t read_count;
 int error = 0;

 error = flow_divert_packet_get_tlv(packet, offset, FLOW_DIVERT_TLV_READ_COUNT, sizeof(read_count), &read_count, ((void*)0));
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to get the read count: %d", error);
  return;
 }

 FDLOG(LOG_DEBUG, fd_cb, "received a read notification for %u bytes", ntohl(read_count));

 FDLOCK(fd_cb);
 if (fd_cb->so != ((void*)0)) {
  socket_lock(fd_cb->so, 0);
  fd_cb->send_window += ntohl(read_count);
  flow_divert_send_buffered_data(fd_cb, FALSE);
  socket_unlock(fd_cb->so, 0);
 }
 FDUNLOCK(fd_cb);
}
