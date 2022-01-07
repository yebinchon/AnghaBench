
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int8_t ;
typedef int u_int32_t ;
struct necp_packet_header {int message_id; void* flags; void* packet_type; } ;



__attribute__((used)) static u_int8_t *
necp_buffer_write_packet_header(u_int8_t *buffer, u_int8_t packet_type, u_int8_t flags, u_int32_t message_id)
{
 ((struct necp_packet_header *)(void *)buffer)->packet_type = packet_type;
 ((struct necp_packet_header *)(void *)buffer)->flags = flags;
 ((struct necp_packet_header *)(void *)buffer)->message_id = message_id;
 return (buffer + sizeof(struct necp_packet_header));
}
