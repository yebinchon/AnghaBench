
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_voucher_attr_key_t ;
typedef size_t iv_index_t ;
struct TYPE_2__ {int ivgte_key; } ;


 int MACH_VOUCHER_ATTR_KEY_NONE ;
 size_t MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ;
 TYPE_1__* iv_global_table ;

__attribute__((used)) static inline mach_voucher_attr_key_t
iv_index_to_key(iv_index_t key_index)
{
 if (MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN > key_index)
  return iv_global_table[key_index].ivgte_key;
 return MACH_VOUCHER_ATTR_KEY_NONE;

}
