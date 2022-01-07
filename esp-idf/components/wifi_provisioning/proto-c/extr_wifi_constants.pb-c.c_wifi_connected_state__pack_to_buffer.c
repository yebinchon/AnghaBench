
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ WifiConnectedState ;
typedef int ProtobufCMessage ;
typedef int ProtobufCBuffer ;


 int assert (int) ;
 size_t protobuf_c_message_pack_to_buffer (int const*,int *) ;
 int wifi_connected_state__descriptor ;

size_t wifi_connected_state__pack_to_buffer
                     (const WifiConnectedState *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &wifi_connected_state__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
