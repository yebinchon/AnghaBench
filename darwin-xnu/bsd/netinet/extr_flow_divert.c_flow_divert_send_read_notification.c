
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flow_divert_pcb {int dummy; } ;
typedef int net_read_count ;
typedef int * mbuf_t ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FLOW_DIVERT_PKT_READ_NOTIFY ;
 int FLOW_DIVERT_TLV_READ_COUNT ;
 int LOG_ERR ;
 int TRUE ;
 int flow_divert_packet_append_tlv (int *,int ,int,int *) ;
 int flow_divert_packet_init (struct flow_divert_pcb*,int ,int **) ;
 int flow_divert_send_packet (struct flow_divert_pcb*,int *,int ) ;
 int htonl (int ) ;
 int mbuf_free (int *) ;

__attribute__((used)) static int
flow_divert_send_read_notification(struct flow_divert_pcb *fd_cb, uint32_t read_count)
{
 int error = 0;
 mbuf_t packet = ((void*)0);
 uint32_t net_read_count = htonl(read_count);

 error = flow_divert_packet_init(fd_cb, FLOW_DIVERT_PKT_READ_NOTIFY, &packet);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to create a read notification packet: %d", error);
  goto done;
 }

 error = flow_divert_packet_append_tlv(packet, FLOW_DIVERT_TLV_READ_COUNT, sizeof(net_read_count), &net_read_count);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to add the read count: %d", error);
  goto done;
 }

 error = flow_divert_send_packet(fd_cb, packet, TRUE);
 if (error) {
  goto done;
 }

done:
 if (error && packet != ((void*)0)) {
  mbuf_free(packet);
 }

 return error;
}
