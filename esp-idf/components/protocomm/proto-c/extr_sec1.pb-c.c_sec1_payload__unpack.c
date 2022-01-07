
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Sec1Payload ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int sec1_payload__descriptor ;

Sec1Payload *
       sec1_payload__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (Sec1Payload *)
     protobuf_c_message_unpack (&sec1_payload__descriptor,
                                allocator, len, data);
}
