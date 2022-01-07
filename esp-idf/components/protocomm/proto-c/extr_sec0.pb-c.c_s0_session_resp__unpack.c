
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int S0SessionResp ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int s0_session_resp__descriptor ;

S0SessionResp *
       s0_session_resp__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (S0SessionResp *)
     protobuf_c_message_unpack (&s0_session_resp__descriptor,
                                allocator, len, data);
}
