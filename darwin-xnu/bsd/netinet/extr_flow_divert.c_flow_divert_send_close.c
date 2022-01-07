
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
typedef int uint32_t ;
struct flow_divert_pcb {int dummy; } ;
typedef int * mbuf_t ;
typedef int how ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FLOW_DIVERT_PKT_CLOSE ;
 int FLOW_DIVERT_TLV_ERROR_CODE ;
 int FLOW_DIVERT_TLV_HOW ;
 int LOG_ERR ;
 int TRUE ;
 int flow_divert_packet_append_tlv (int *,int ,int,int*) ;
 int flow_divert_packet_init (struct flow_divert_pcb*,int ,int **) ;
 int flow_divert_send_packet (struct flow_divert_pcb*,int *,int ) ;
 int htonl (int) ;
 int mbuf_free (int *) ;

__attribute__((used)) static int
flow_divert_send_close(struct flow_divert_pcb *fd_cb, int how)
{
 int error = 0;
 mbuf_t packet = ((void*)0);
 uint32_t zero = 0;

 error = flow_divert_packet_init(fd_cb, FLOW_DIVERT_PKT_CLOSE, &packet);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to create a close packet: %d", error);
  goto done;
 }

 error = flow_divert_packet_append_tlv(packet, FLOW_DIVERT_TLV_ERROR_CODE, sizeof(zero), &zero);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to add the error code TLV: %d", error);
  goto done;
 }

 how = htonl(how);
 error = flow_divert_packet_append_tlv(packet, FLOW_DIVERT_TLV_HOW, sizeof(how), &how);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to add the how flag: %d", error);
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
