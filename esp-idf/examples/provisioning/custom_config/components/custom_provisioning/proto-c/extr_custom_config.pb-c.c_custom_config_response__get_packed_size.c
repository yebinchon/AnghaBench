
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int ProtobufCMessage ;
typedef TYPE_2__ CustomConfigResponse ;


 int assert (int) ;
 int custom_config_response__descriptor ;
 size_t protobuf_c_message_get_packed_size (int const*) ;

size_t custom_config_response__get_packed_size
                     (const CustomConfigResponse *message)
{
  assert(message->base.descriptor == &custom_config_response__descriptor);
  return protobuf_c_message_get_packed_size ((const ProtobufCMessage*)(message));
}
