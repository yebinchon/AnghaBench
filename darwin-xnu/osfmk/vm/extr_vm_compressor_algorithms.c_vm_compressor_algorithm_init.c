
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_compressor_mode_t ;
typedef scalar_t__ uint32_t ;
typedef int tmpc ;
typedef int new_codec ;
struct TYPE_2__ {int lz4_threshold; } ;


 scalar_t__ CMODE_HYB ;
 scalar_t__ CMODE_LZ4 ;
 scalar_t__ CMODE_WK ;
 int PAGE_SIZE ;
 scalar_t__ PE_parse_boot_argn (char*,scalar_t__*,int) ;
 scalar_t__ VM_COMPRESSOR_DEFAULT_CODEC ;
 int assertf (int,char*,scalar_t__) ;
 scalar_t__ vm_compressor_current_codec ;
 TYPE_1__ vmctune ;

void vm_compressor_algorithm_init(void) {
 vm_compressor_mode_t new_codec = VM_COMPRESSOR_DEFAULT_CODEC;
 PE_parse_boot_argn("vm_compressor_codec", &new_codec, sizeof(new_codec));
 assertf(((new_codec == VM_COMPRESSOR_DEFAULT_CODEC) || (new_codec == CMODE_WK) ||
  (new_codec == CMODE_LZ4) || (new_codec == CMODE_HYB)),
     "Invalid VM compression codec: %u", new_codec);
}
