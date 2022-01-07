
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int ProtobufCMessage ;
typedef int ProtobufCAllocator ;
typedef TYPE_2__ CmdApplyConfig ;


 int assert (int) ;
 int cmd_apply_config__descriptor ;
 int protobuf_c_message_free_unpacked (int *,int *) ;

void cmd_apply_config__free_unpacked
                     (CmdApplyConfig *message,
                      ProtobufCAllocator *allocator)
{
  if(!message)
    return;
  assert(message->base.descriptor == &cmd_apply_config__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
