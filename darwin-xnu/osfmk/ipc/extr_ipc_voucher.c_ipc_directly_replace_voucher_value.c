
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_voucher_attr_value_handle_t ;
typedef int mach_voucher_attr_key_t ;
typedef int kern_return_t ;
typedef int iv_index_t ;
typedef int ipc_voucher_t ;
typedef scalar_t__ ipc_voucher_attr_manager_t ;
typedef int ipc_voucher_attr_control_t ;


 scalar_t__ IVAM_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_VALUE_FLAGS_NONE ;
 int TRUE ;
 int iv_key_to_index (int ) ;
 int iv_lookup (int ,int ) ;
 int iv_set (int ,int ,int ) ;
 int ivace_reference_by_value (int ,int ,int ) ;
 int ivace_release (int ,int ) ;
 int ivgt_lookup (int ,int ,scalar_t__*,int *) ;

__attribute__((used)) static kern_return_t
ipc_directly_replace_voucher_value(
 ipc_voucher_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_value_handle_t new_value)
{
 ipc_voucher_attr_manager_t ivam;
 ipc_voucher_attr_control_t ivac;
 iv_index_t save_val_index;
 iv_index_t val_index;
 iv_index_t key_index;





 key_index = iv_key_to_index(key);
 ivgt_lookup(key_index, TRUE, &ivam, &ivac);
 if (IVAM_NULL == ivam)
  return KERN_INVALID_ARGUMENT;


 save_val_index = iv_lookup(voucher, key_index);







 val_index = ivace_reference_by_value(ivac, new_value,
    MACH_VOUCHER_ATTR_VALUE_FLAGS_NONE);
 iv_set(voucher, key_index, val_index);







 ivace_release(key_index, save_val_index);

 return KERN_SUCCESS;
}
