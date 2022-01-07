
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ProtobufCAllocator ;
typedef int CmdScanStart ;


 int cmd_scan_start__descriptor ;
 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;

CmdScanStart *
       cmd_scan_start__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (CmdScanStart *)
     protobuf_c_message_unpack (&cmd_scan_start__descriptor,
                                allocator, len, data);
}
