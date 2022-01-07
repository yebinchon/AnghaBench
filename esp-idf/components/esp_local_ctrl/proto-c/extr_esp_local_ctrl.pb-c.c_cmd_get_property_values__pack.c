
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int ProtobufCMessage ;
typedef TYPE_2__ CmdGetPropertyValues ;


 int assert (int) ;
 int cmd_get_property_values__descriptor ;
 size_t protobuf_c_message_pack (int const*,int *) ;

size_t cmd_get_property_values__pack
                     (const CmdGetPropertyValues *message,
                      uint8_t *out)
{
  assert(message->base.descriptor == &cmd_get_property_values__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
