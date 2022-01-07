
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ RespGetPropertyCount ;
typedef int ProtobufCMessage ;


 int assert (int) ;
 size_t protobuf_c_message_get_packed_size (int const*) ;
 int resp_get_property_count__descriptor ;

size_t resp_get_property_count__get_packed_size
                     (const RespGetPropertyCount *message)
{
  assert(message->base.descriptor == &resp_get_property_count__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
