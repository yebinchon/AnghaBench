
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef uintptr_t u_int32_t ;
typedef int type ;
typedef int length ;


 int LOG_ERR ;
 int NECPLOG (int ,char*,uintptr_t,uintptr_t) ;
 int NECPLOG0 (int ,char*) ;

__attribute__((used)) static inline bool
necp_buffer_write_tlv_validate(u_int8_t *cursor, u_int8_t type, u_int32_t length,
          u_int8_t *buffer, u_int32_t buffer_length)
{
 if (cursor < buffer || (uintptr_t)(cursor - buffer) > buffer_length) {
  NECPLOG0(LOG_ERR, "Cannot write TLV in buffer (invalid cursor)");
  return (0);
 }
 u_int8_t *next_tlv = (u_int8_t *)(cursor + sizeof(type) + sizeof(length) + length);
 if (next_tlv <= buffer ||
  (uintptr_t)(next_tlv - buffer) > buffer_length) {
  NECPLOG(LOG_ERR, "Cannot write TLV in buffer (TLV length %u, buffer length %u)",
    length, buffer_length);
  return (0);
 }
 return (1);
}
