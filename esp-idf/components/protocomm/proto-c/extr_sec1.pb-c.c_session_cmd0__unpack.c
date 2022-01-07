
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int SessionCmd0 ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int session_cmd0__descriptor ;

SessionCmd0 *
       session_cmd0__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (SessionCmd0 *)
     protobuf_c_message_unpack (&session_cmd0__descriptor,
                                allocator, len, data);
}
