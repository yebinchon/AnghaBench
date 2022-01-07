
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ProtobufCAllocator ;
typedef int PropertyInfo ;


 int property_info__descriptor ;
 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;

PropertyInfo *
       property_info__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (PropertyInfo *)
     protobuf_c_message_unpack (&property_info__descriptor,
                                allocator, len, data);
}
