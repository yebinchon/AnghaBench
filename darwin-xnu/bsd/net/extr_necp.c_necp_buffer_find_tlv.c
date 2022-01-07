
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int curr_type ;
typedef int curr_length ;


 scalar_t__ NECP_TLV_NIL ;
 scalar_t__ TRUE ;
 scalar_t__ necp_buffer_get_tlv_length (scalar_t__*,int) ;
 scalar_t__ necp_buffer_get_tlv_type (scalar_t__*,int) ;

int
necp_buffer_find_tlv(u_int8_t *buffer, u_int32_t buffer_length, int offset, u_int8_t type, int next)
{
 if (offset < 0) {
  return (-1);
 }
 int cursor = offset;
 int next_cursor;
 u_int32_t curr_length;
 u_int8_t curr_type;

 while (TRUE) {
  if ((((u_int32_t)cursor) + sizeof(curr_type) + sizeof(curr_length)) > buffer_length) {
   return (-1);
  }
  if (!next) {
   curr_type = necp_buffer_get_tlv_type(buffer, cursor);
  } else {
   next = 0;
   curr_type = NECP_TLV_NIL;
  }
  curr_length = necp_buffer_get_tlv_length(buffer, cursor);
  if (curr_length > buffer_length - ((u_int32_t)cursor + sizeof(curr_type) + sizeof(curr_length))) {
   return (-1);
  }

  next_cursor = (cursor + sizeof(curr_type) + sizeof(curr_length) + curr_length);
  if (curr_type == type) {

   if (((u_int32_t)next_cursor) <= buffer_length) {
    return (cursor);
   } else {
    return (-1);
   }
  }
  cursor = next_cursor;
 }
}
