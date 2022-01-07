
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int S0SessionCmd ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int s0_session_cmd__descriptor ;

S0SessionCmd *
       s0_session_cmd__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (S0SessionCmd *)
     protobuf_c_message_unpack (&s0_session_cmd__descriptor,
                                allocator, len, data);
}
