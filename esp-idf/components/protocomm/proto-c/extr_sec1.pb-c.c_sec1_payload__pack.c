
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ Sec1Payload ;
typedef int ProtobufCMessage ;


 int assert (int) ;
 size_t protobuf_c_message_pack (int const*,int *) ;
 int sec1_payload__descriptor ;

size_t sec1_payload__pack
                     (const Sec1Payload *message,
                      uint8_t *out)
{
  assert(message->base.descriptor == &sec1_payload__descriptor);
  return protobuf_c_message_pack ((const ProtobufCMessage*)message, out);
}
