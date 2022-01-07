
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;



u_int32_t
necp_buffer_get_tlv_length(u_int8_t *buffer, int tlv_offset)
{
 u_int32_t *length = ((void*)0);

 if (buffer == ((void*)0)) {
  return (0);
 }

 length = (u_int32_t *)(void *)((u_int8_t *)buffer + tlv_offset + sizeof(u_int8_t));
 return (length ? *length : 0);
}
