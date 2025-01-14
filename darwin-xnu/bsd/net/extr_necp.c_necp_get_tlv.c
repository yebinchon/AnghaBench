
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int mbuf_t ;


 int necp_find_tlv (int ,int *,int ,int,int ,int*,int ) ;
 int necp_get_tlv_at_offset (int ,int *,int ,int,int ,void*,int *) ;

__attribute__((used)) static int
necp_get_tlv(mbuf_t packet, u_int8_t *buffer, u_int32_t buffer_length,
    int offset, u_int8_t type, u_int32_t buff_len, void *buff, u_int32_t *value_size)
{
 int error = 0;

 int tlv_offset = necp_find_tlv(packet, buffer, buffer_length, offset, type, &error, 0);
 if (tlv_offset < 0) {
  return (error);
 }

 return (necp_get_tlv_at_offset(packet, buffer, buffer_length, tlv_offset, buff_len, buff, value_size));
}
