
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ SessionCmd0 ;
typedef int ProtobufCMessage ;
typedef int ProtobufCBuffer ;


 int assert (int) ;
 size_t protobuf_c_message_pack_to_buffer (int const*,int *) ;
 int session_cmd0__descriptor ;

size_t session_cmd0__pack_to_buffer
                     (const SessionCmd0 *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &session_cmd0__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
