
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int * mbuf_t ;


 int EINVAL ;
 int ENOENT ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int,int,...) ;
 int NECPLOG0 (int ,char*) ;
 int memcpy (void*,int *,int) ;
 int necp_buffer_get_tlv_length (int *,int) ;
 int * necp_buffer_get_tlv_value (int *,int,int *) ;
 int necp_packet_get_tlv_at_offset (int *,int,int,void*,int*) ;

__attribute__((used)) static int
necp_get_tlv_at_offset(mbuf_t packet, u_int8_t *buffer, u_int32_t buffer_length,
        int tlv_offset, u_int32_t out_buffer_length, void *out_buffer, u_int32_t *value_size)
{
 if (packet != ((void*)0)) {

  return necp_packet_get_tlv_at_offset(packet, tlv_offset, out_buffer_length, out_buffer, value_size);
 }

 if (buffer == ((void*)0)) {
  NECPLOG0(LOG_ERR, "necp_get_tlv_at_offset buffer is NULL");
  return (EINVAL);
 }




 if (tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t) > buffer_length) {
  NECPLOG(LOG_ERR, "necp_get_tlv_at_offset buffer_length is too small for TLV (%u < %u)",
    buffer_length, tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t));
  return (EINVAL);
 }


 u_int32_t tlv_length = necp_buffer_get_tlv_length(buffer, tlv_offset);
 if (tlv_length > buffer_length - (tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t))) {
  NECPLOG(LOG_ERR, "necp_get_tlv_at_offset buffer_length is too small for TLV of length %u (%u < %u)",
    tlv_length, buffer_length, tlv_offset + sizeof(u_int8_t) + sizeof(u_int32_t) + tlv_length);
  return (EINVAL);
 }

 if (out_buffer != ((void*)0) && out_buffer_length > 0) {

  if (out_buffer_length < tlv_length) {
   NECPLOG(LOG_ERR, "necp_get_tlv_at_offset out_buffer_length is too small for TLV value (%u < %u)",
     out_buffer_length, tlv_length);
   return (EINVAL);
  }


  u_int8_t *tlv_value = necp_buffer_get_tlv_value(buffer, tlv_offset, ((void*)0));
  if (tlv_value == ((void*)0)) {
   NECPLOG0(LOG_ERR, "necp_get_tlv_at_offset tlv_value is NULL");
   return (ENOENT);
  }


  memcpy(out_buffer, tlv_value, tlv_length);
 }


 if (value_size != ((void*)0)) {
  *value_size = tlv_length;
 }

 return (0);
}
