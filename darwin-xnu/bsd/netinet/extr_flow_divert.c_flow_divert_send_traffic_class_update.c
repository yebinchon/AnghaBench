
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int traffic_class ;
struct flow_divert_pcb {int dummy; } ;
typedef int * mbuf_t ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FLOW_DIVERT_PKT_PROPERTIES_UPDATE ;
 int FLOW_DIVERT_TLV_TRAFFIC_CLASS ;
 int LOG_ERR ;
 int TRUE ;
 int flow_divert_packet_append_tlv (int *,int ,int,int*) ;
 int flow_divert_packet_init (struct flow_divert_pcb*,int ,int **) ;
 int flow_divert_send_packet (struct flow_divert_pcb*,int *,int ) ;
 int mbuf_free (int *) ;

__attribute__((used)) static int
flow_divert_send_traffic_class_update(struct flow_divert_pcb *fd_cb, int traffic_class)
{
 int error = 0;
 mbuf_t packet = ((void*)0);

 error = flow_divert_packet_init(fd_cb, FLOW_DIVERT_PKT_PROPERTIES_UPDATE, &packet);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to create a properties update packet: %d", error);
  goto done;
 }

 error = flow_divert_packet_append_tlv(packet, FLOW_DIVERT_TLV_TRAFFIC_CLASS, sizeof(traffic_class), &traffic_class);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to add the traffic class: %d", error);
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
