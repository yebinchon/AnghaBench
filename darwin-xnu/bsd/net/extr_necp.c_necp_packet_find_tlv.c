
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int mbuf_t ;
typedef int curr_type ;
typedef int curr_length ;


 int ENOENT ;
 scalar_t__ NECP_TLV_NIL ;
 int mbuf_copydata (int ,size_t,int,scalar_t__*) ;

__attribute__((used)) static int
necp_packet_find_tlv(mbuf_t packet, int offset, u_int8_t type, int *err, int next)
{
 size_t cursor = offset;
 int error = 0;
 u_int32_t curr_length;
 u_int8_t curr_type;

 *err = 0;

 do {
  if (!next) {
   error = mbuf_copydata(packet, cursor, sizeof(curr_type), &curr_type);
   if (error) {
    *err = ENOENT;
    return (-1);
   }
  } else {
   next = 0;
   curr_type = NECP_TLV_NIL;
  }

  if (curr_type != type) {
   cursor += sizeof(curr_type);
   error = mbuf_copydata(packet, cursor, sizeof(curr_length), &curr_length);
   if (error) {
    *err = error;
    return (-1);
   }
   cursor += (sizeof(curr_length) + curr_length);
  }
 } while (curr_type != type);

 return (cursor);
}
