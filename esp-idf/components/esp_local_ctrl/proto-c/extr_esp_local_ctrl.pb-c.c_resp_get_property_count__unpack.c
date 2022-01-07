
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RespGetPropertyCount ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int resp_get_property_count__descriptor ;

RespGetPropertyCount *
       resp_get_property_count__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (RespGetPropertyCount *)
     protobuf_c_message_unpack (&resp_get_property_count__descriptor,
                                allocator, len, data);
}
