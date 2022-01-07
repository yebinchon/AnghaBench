
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int compressor_encode_scratch_t ;


 int MAX (int,int ) ;
 scalar_t__ VM_COMPRESSOR_DEFAULT_CODEC ;
 int WKdm_SCRATCH_BUF_SIZE_INTERNAL ;
 scalar_t__ vm_compressor_current_codec ;

uint32_t vm_compressor_get_encode_scratch_size(void) {
 if (vm_compressor_current_codec != VM_COMPRESSOR_DEFAULT_CODEC) {
  return MAX(sizeof(compressor_encode_scratch_t), WKdm_SCRATCH_BUF_SIZE_INTERNAL);
 } else {
  return WKdm_SCRATCH_BUF_SIZE_INTERNAL;
 }
}
