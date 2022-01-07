
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int * mbuf_t ;


 int necp_buffer_find_tlv (int *,int ,int,int ,int) ;
 int necp_packet_find_tlv (int *,int,int ,int*,int) ;

__attribute__((used)) static int
necp_find_tlv(mbuf_t packet, u_int8_t *buffer, u_int32_t buffer_length, int offset, u_int8_t type, int *err, int next)
{
 int cursor = -1;
 if (packet != ((void*)0)) {
  cursor = necp_packet_find_tlv(packet, offset, type, err, next);
 } else if (buffer != ((void*)0)) {
  cursor = necp_buffer_find_tlv(buffer, buffer_length, offset, type, next);
 }
 return (cursor);
}
