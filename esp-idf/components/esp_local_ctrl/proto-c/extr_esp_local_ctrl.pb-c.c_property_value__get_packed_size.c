
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int ProtobufCMessage ;
typedef TYPE_2__ PropertyValue ;


 int assert (int) ;
 int property_value__descriptor ;
 size_t protobuf_c_message_get_packed_size (int const*) ;

size_t property_value__get_packed_size
                     (const PropertyValue *message)
{
  assert(message->base.descriptor == &property_value__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
