
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RespScanStatus ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int resp_scan_status__descriptor ;

RespScanStatus *
       resp_scan_status__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (RespScanStatus *)
     protobuf_c_message_unpack (&resp_scan_status__descriptor,
                                allocator, len, data);
}
