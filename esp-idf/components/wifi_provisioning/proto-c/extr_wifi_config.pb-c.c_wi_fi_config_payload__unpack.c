
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WiFiConfigPayload ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int wi_fi_config_payload__descriptor ;

WiFiConfigPayload *
       wi_fi_config_payload__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (WiFiConfigPayload *)
     protobuf_c_message_unpack (&wi_fi_config_payload__descriptor,
                                allocator, len, data);
}
