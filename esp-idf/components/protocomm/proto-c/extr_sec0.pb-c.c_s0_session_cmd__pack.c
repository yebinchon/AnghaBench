
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ S0SessionCmd ;
typedef int ProtobufCMessage ;


 int assert (int) ;
 size_t protobuf_c_message_pack (int const*,int *) ;
 int s0_session_cmd__descriptor ;

size_t s0_session_cmd__pack
                     (const S0SessionCmd *message,
                      uint8_t *out)
{
  assert(message->base.descriptor == &s0_session_cmd__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
