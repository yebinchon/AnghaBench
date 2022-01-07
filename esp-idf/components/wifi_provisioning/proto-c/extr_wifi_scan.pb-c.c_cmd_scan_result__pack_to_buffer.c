
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int ProtobufCMessage ;
typedef int ProtobufCBuffer ;
typedef TYPE_2__ CmdScanResult ;


 int assert (int) ;
 int cmd_scan_result__descriptor ;
 size_t protobuf_c_message_pack_to_buffer (int const*,int *) ;

size_t cmd_scan_result__pack_to_buffer
                     (const CmdScanResult *message,
                      ProtobufCBuffer *buffer)
{
  assert(message->base.descriptor == &cmd_scan_result__descriptor);
  return protobuf_c_message_pack_to_buffer ((const ProtobufCMessage*)message, buffer);
}
