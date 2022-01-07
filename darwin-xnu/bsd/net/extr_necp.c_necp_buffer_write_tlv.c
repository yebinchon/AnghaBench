
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int type ;
typedef int length ;


 int memcpy (int *,void const*,int) ;
 int necp_buffer_write_tlv_validate (int *,int ,int,int *,int) ;

u_int8_t *
necp_buffer_write_tlv(u_int8_t *cursor, u_int8_t type,
       u_int32_t length, const void *value,
       u_int8_t *buffer, u_int32_t buffer_length)
{
 if (!necp_buffer_write_tlv_validate(cursor, type, length, buffer, buffer_length)) {
  return (((void*)0));
 }
 u_int8_t *next_tlv = (u_int8_t *)(cursor + sizeof(type) + sizeof(length) + length);
 *(u_int8_t *)(cursor) = type;
 *(u_int32_t *)(void *)(cursor + sizeof(type)) = length;
 if (length > 0) {
  memcpy((u_int8_t *)(cursor + sizeof(type) + sizeof(length)), value, length);
 }

 return (next_tlv);
}
