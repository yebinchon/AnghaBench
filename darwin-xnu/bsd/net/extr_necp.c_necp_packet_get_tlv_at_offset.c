
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int mbuf_t ;
typedef int length ;


 int EINVAL ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,scalar_t__,int,scalar_t__) ;
 scalar_t__ m_length2 (int ,int *) ;
 int mbuf_copydata (int ,int,scalar_t__,void*) ;

__attribute__((used)) static int
necp_packet_get_tlv_at_offset(mbuf_t packet, int tlv_offset, u_int32_t buff_len, void *buff, u_int32_t *value_size)
{
 int error = 0;
 u_int32_t length;

 if (tlv_offset < 0) {
  return (EINVAL);
 }

 error = mbuf_copydata(packet, tlv_offset + sizeof(u_int8_t), sizeof(length), &length);
 if (error) {
  return (error);
 }

 u_int32_t total_len = m_length2(packet, ((void*)0));
 if (total_len < (tlv_offset + sizeof(u_int8_t) + sizeof(length) + length)) {
  NECPLOG(LOG_ERR, "Got a bad TLV, length (%u) + offset (%d) < total length (%u)",
    length, (tlv_offset + sizeof(u_int8_t) + sizeof(length)), total_len);
  return (EINVAL);
 }

 if (value_size != ((void*)0)) {
  *value_size = length;
 }

 if (buff != ((void*)0) && buff_len > 0) {
  u_int32_t to_copy = (length < buff_len) ? length : buff_len;
  error = mbuf_copydata(packet, tlv_offset + sizeof(u_int8_t) + sizeof(length), to_copy, buff);
  if (error) {
   return (error);
  }
 }

 return (0);
}
