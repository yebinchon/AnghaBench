
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RespApplyConfig ;
typedef int ProtobufCAllocator ;


 scalar_t__ protobuf_c_message_unpack (int *,int *,size_t,int const*) ;
 int resp_apply_config__descriptor ;

RespApplyConfig *
       resp_apply_config__unpack
                     (ProtobufCAllocator *allocator,
                      size_t len,
                      const uint8_t *data)
{
  return (RespApplyConfig *)
     protobuf_c_message_unpack (&resp_apply_config__descriptor,
                                allocator, len, data);
}
