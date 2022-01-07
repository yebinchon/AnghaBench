
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct flow_divert_pcb {size_t bytes_sent; } ;
typedef int * mbuf_t ;
typedef int errno_t ;
typedef int Boolean ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FLOW_DIVERT_PKT_DATA ;
 int LOG_ERR ;
 int TRUE ;
 int flow_divert_add_data_statistics (struct flow_divert_pcb*,size_t,int ) ;
 int flow_divert_append_target_endpoint_tlv (int *,struct sockaddr*) ;
 int flow_divert_packet_init (struct flow_divert_pcb*,int ,int **) ;
 int flow_divert_send_packet (struct flow_divert_pcb*,int *,int ) ;
 int * m_last (int *) ;
 int mbuf_freem (int *) ;
 int mbuf_pkthdr_adjustlen (int *,size_t) ;
 int mbuf_setnext (int *,int *) ;

__attribute__((used)) static errno_t
flow_divert_send_data_packet(struct flow_divert_pcb *fd_cb, mbuf_t data, size_t data_len, struct sockaddr *toaddr, Boolean force)
{
 mbuf_t packet;
 mbuf_t last;
 int error = 0;

 error = flow_divert_packet_init(fd_cb, FLOW_DIVERT_PKT_DATA, &packet);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "flow_divert_packet_init failed: %d", error);
  return error;
 }

 if (toaddr != ((void*)0)) {
  error = flow_divert_append_target_endpoint_tlv(packet, toaddr);
  if (error) {
   FDLOG(LOG_ERR, fd_cb, "flow_divert_append_target_endpoint_tlv() failed: %d", error);
   return error;
  }
 }

 if (data_len > 0 && data != ((void*)0)) {
  last = m_last(packet);
  mbuf_setnext(last, data);
  mbuf_pkthdr_adjustlen(packet, data_len);
 }
 error = flow_divert_send_packet(fd_cb, packet, force);

 if (error) {
  mbuf_setnext(last, ((void*)0));
  mbuf_freem(packet);
 } else {
  fd_cb->bytes_sent += data_len;
  flow_divert_add_data_statistics(fd_cb, data_len, TRUE);
 }

 return error;
}
