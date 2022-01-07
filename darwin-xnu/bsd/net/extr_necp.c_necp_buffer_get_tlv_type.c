
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;



u_int8_t
necp_buffer_get_tlv_type(u_int8_t *buffer, int tlv_offset)
{
 u_int8_t *type = ((void*)0);

 if (buffer == ((void*)0)) {
  return (0);
 }

 type = (u_int8_t *)((u_int8_t *)buffer + tlv_offset);
 return (type ? *type : 0);
}
