
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int type ;
typedef int net_length ;
typedef int mbuf_t ;


 int FDLOG (int ,int *,char*,int ) ;
 int FDLOG0 (int ,int *,char*) ;
 int LOG_ERR ;
 int MBUF_DONTWAIT ;
 int htonl (int ) ;
 int mbuf_copyback (int ,int ,int,void const*,int ) ;
 int mbuf_pkthdr_len (int ) ;
 int nil_pcb ;

__attribute__((used)) static int
flow_divert_packet_append_tlv(mbuf_t packet, uint8_t type, uint32_t length, const void *value)
{
 uint32_t net_length = htonl(length);
 int error = 0;

 error = mbuf_copyback(packet, mbuf_pkthdr_len(packet), sizeof(type), &type, MBUF_DONTWAIT);
 if (error) {
  FDLOG(LOG_ERR, &nil_pcb, "failed to append the type (%d)", type);
  return error;
 }

 error = mbuf_copyback(packet, mbuf_pkthdr_len(packet), sizeof(net_length), &net_length, MBUF_DONTWAIT);
 if (error) {
  FDLOG(LOG_ERR, &nil_pcb, "failed to append the length (%u)", length);
  return error;
 }

 error = mbuf_copyback(packet, mbuf_pkthdr_len(packet), length, value, MBUF_DONTWAIT);
 if (error) {
  FDLOG0(LOG_ERR, &nil_pcb, "failed to append the value");
  return error;
 }

 return error;
}
