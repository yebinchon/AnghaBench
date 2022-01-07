
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
typedef int type ;
typedef int length ;


 int TRUE ;
 scalar_t__ memcmp (scalar_t__*,void const*,int) ;
 int memcpy (scalar_t__*,void const*,int) ;
 int necp_buffer_write_tlv_validate (scalar_t__*,scalar_t__,int,scalar_t__*,int) ;

u_int8_t *
necp_buffer_write_tlv_if_different(u_int8_t *cursor, u_int8_t type,
           u_int32_t length, const void *value, bool *updated,
           u_int8_t *buffer, u_int32_t buffer_length)
{
 if (!necp_buffer_write_tlv_validate(cursor, type, length, buffer, buffer_length)) {
  return (((void*)0));
 }
 u_int8_t *next_tlv = (u_int8_t *)(cursor + sizeof(type) + sizeof(length) + length);
 if (*updated || *(u_int8_t *)(cursor) != type) {
  *(u_int8_t *)(cursor) = type;
  *updated = TRUE;
 }
 if (*updated || *(u_int32_t *)(void *)(cursor + sizeof(type)) != length) {
  *(u_int32_t *)(void *)(cursor + sizeof(type)) = length;
  *updated = TRUE;
 }
 if (length > 0) {
  if (*updated || memcmp((u_int8_t *)(cursor + sizeof(type) + sizeof(length)), value, length) != 0) {
   memcpy((u_int8_t *)(cursor + sizeof(type) + sizeof(length)), value, length);
   *updated = TRUE;
  }
 }
 return (next_tlv);
}
