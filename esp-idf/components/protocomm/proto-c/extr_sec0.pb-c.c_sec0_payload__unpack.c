
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Sec0Payload ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int sec0_payload__descriptor ;

Sec0Payload *
       sec0_payload__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (Sec0Payload *)
     protobuf_c_message_unpack (&sec0_payload__descriptor,
                                allocator, len, data);
}
