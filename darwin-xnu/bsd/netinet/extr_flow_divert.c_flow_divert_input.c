
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_divert_pcb {int dummy; } ;
struct flow_divert_packet_header {scalar_t__ conn_id; int packet_type; } ;
struct flow_divert_group {int ctl_unit; } ;
typedef int mbuf_t ;
typedef int hdr ;


 int EINVAL ;
 int ENOBUFS ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int,...) ;
 int FDRELEASE (struct flow_divert_pcb*) ;
 int FD_CTL_RCVBUFF_SIZE ;







 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int flow_divert_handle_app_map_create (struct flow_divert_group*,int ,int) ;
 int flow_divert_handle_close (struct flow_divert_pcb*,int ,int) ;
 int flow_divert_handle_connect_result (struct flow_divert_pcb*,int ,int) ;
 int flow_divert_handle_data (struct flow_divert_pcb*,int ,int) ;
 int flow_divert_handle_group_init (struct flow_divert_group*,int ,int) ;
 int flow_divert_handle_properties_update (struct flow_divert_pcb*,int ,int) ;
 int flow_divert_handle_read_notification (struct flow_divert_pcb*,int ,int) ;
 int flow_divert_packet_type2str (int) ;
 struct flow_divert_pcb* flow_divert_pcb_lookup (scalar_t__,struct flow_divert_group*) ;
 int mbuf_copydata (int ,int ,int,struct flow_divert_packet_header*) ;
 int mbuf_freem (int ) ;
 int mbuf_pkthdr_len (int ) ;
 struct flow_divert_pcb nil_pcb ;
 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static int
flow_divert_input(mbuf_t packet, struct flow_divert_group *group)
{
 struct flow_divert_packet_header hdr;
 int error = 0;
 struct flow_divert_pcb *fd_cb;

 if (mbuf_pkthdr_len(packet) < sizeof(hdr)) {
  FDLOG(LOG_ERR, &nil_pcb, "got a bad packet, length (%lu) < sizeof hdr (%lu)", mbuf_pkthdr_len(packet), sizeof(hdr));
  error = EINVAL;
  goto done;
 }

 if (mbuf_pkthdr_len(packet) > FD_CTL_RCVBUFF_SIZE) {
  FDLOG(LOG_ERR, &nil_pcb, "got a bad packet, length (%lu) > %d", mbuf_pkthdr_len(packet), FD_CTL_RCVBUFF_SIZE);
  error = EINVAL;
  goto done;
 }

 error = mbuf_copydata(packet, 0, sizeof(hdr), &hdr);
 if (error) {
  FDLOG(LOG_ERR, &nil_pcb, "mbuf_copydata failed for the header: %d", error);
  error = ENOBUFS;
  goto done;
 }

 hdr.conn_id = ntohl(hdr.conn_id);

 if (hdr.conn_id == 0) {
  switch (hdr.packet_type) {
   case 130:
    flow_divert_handle_group_init(group, packet, sizeof(hdr));
    break;
   case 134:
    flow_divert_handle_app_map_create(group, packet, sizeof(hdr));
    break;
   default:
    FDLOG(LOG_WARNING, &nil_pcb, "got an unknown message type: %d", hdr.packet_type);
    break;
  }
  goto done;
 }

 fd_cb = flow_divert_pcb_lookup(hdr.conn_id, group);
 if (fd_cb == ((void*)0)) {
  if (hdr.packet_type != 133 && hdr.packet_type != 128) {
   FDLOG(LOG_NOTICE, &nil_pcb, "got a %s message from group %d for an unknown pcb: %u", flow_divert_packet_type2str(hdr.packet_type), group->ctl_unit, hdr.conn_id);
  }
  goto done;
 }

 switch (hdr.packet_type) {
  case 132:
   flow_divert_handle_connect_result(fd_cb, packet, sizeof(hdr));
   break;
  case 133:
   flow_divert_handle_close(fd_cb, packet, sizeof(hdr));
   break;
  case 131:
   flow_divert_handle_data(fd_cb, packet, sizeof(hdr));
   break;
  case 128:
   flow_divert_handle_read_notification(fd_cb, packet, sizeof(hdr));
   break;
  case 129:
   flow_divert_handle_properties_update(fd_cb, packet, sizeof(hdr));
   break;
  default:
   FDLOG(LOG_WARNING, fd_cb, "got an unknown message type: %d", hdr.packet_type);
   break;
 }

 FDRELEASE(fd_cb);

done:
 mbuf_freem(packet);
 return error;
}
