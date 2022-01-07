
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct flow_divert_pcb {int hash; } ;
struct flow_divert_packet_header {int conn_id; int packet_type; } ;
typedef int * mbuf_t ;
typedef int hdr ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int LOG_ERR ;
 int MBUF_DONTWAIT ;
 int MBUF_TYPE_HEADER ;
 int htonl (int ) ;
 int mbuf_copyback (int *,int ,int,struct flow_divert_packet_header*,int ) ;
 int mbuf_freem (int *) ;
 int mbuf_gethdr (int ,int ,int **) ;

__attribute__((used)) static int
flow_divert_packet_init(struct flow_divert_pcb *fd_cb, uint8_t packet_type, mbuf_t *packet)
{
 struct flow_divert_packet_header hdr;
 int error = 0;

 error = mbuf_gethdr(MBUF_DONTWAIT, MBUF_TYPE_HEADER, packet);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to allocate the header mbuf: %d", error);
  return error;
 }

 hdr.packet_type = packet_type;
 hdr.conn_id = htonl(fd_cb->hash);


 error = mbuf_copyback(*packet, 0, sizeof(hdr), &hdr, MBUF_DONTWAIT);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "mbuf_copyback(hdr) failed: %d", error);
  mbuf_freem(*packet);
  *packet = ((void*)0);
  return error;
 }

 return 0;
}
