
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ RespScanStatus ;
typedef int ProtobufCMessage ;
typedef int ProtobufCAllocator ;


 int assert (int) ;
 int protobuf_c_message_free_unpacked (int *,int *) ;
 int resp_scan_status__descriptor ;

void resp_scan_status__free_unpacked
                     (RespScanStatus *message,
                      ProtobufCAllocator *allocator)
{
  if(!message)
    return;
  assert(message->base.descriptor == &resp_scan_status__descriptor);
  protobuf_c_message_free_unpacked ((ProtobufCMessage*)message, allocator);
}
