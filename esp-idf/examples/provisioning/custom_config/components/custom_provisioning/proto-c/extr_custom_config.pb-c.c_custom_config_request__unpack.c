
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ProtobufCAllocator ;
typedef int CustomConfigRequest ;


 int custom_config_request__descriptor ;
 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;

CustomConfigRequest *
       custom_config_request__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (CustomConfigRequest *)
     protobuf_c_message_unpack (&custom_config_request__descriptor,
                                allocator, len, data);
}
