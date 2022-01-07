
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef int mach_voucher_attr_value_handle_array_size_t ;
typedef int mach_voucher_attr_value_flags_t ;
typedef int mach_voucher_attr_recipe_command_t ;
typedef int mach_voucher_attr_key_t ;
typedef int mach_voucher_attr_content_t ;
typedef int mach_voucher_attr_content_size_t ;
typedef scalar_t__ kern_return_t ;
typedef int iv_index_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef TYPE_1__* ipc_voucher_attr_manager_t ;
typedef int ipc_voucher_attr_control_t ;
struct TYPE_5__ {scalar_t__ (* ivam_get_value ) (TYPE_1__*,int ,int ,int *,int ,int ,int ,int *,int *,scalar_t__*) ;} ;


 TYPE_1__* IVAM_NULL ;
 scalar_t__ IV_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_VALUE_MAX_NESTED ;
 int TRUE ;
 int iv_key_to_index (int ) ;
 int iv_lookup (scalar_t__,int ) ;
 int iv_release (scalar_t__) ;
 int iv_set (scalar_t__,int ,int ) ;
 int ivac_release (int ) ;
 int ivace_lookup_values (int ,int ,int *,int *) ;
 int ivace_reference_by_value (int ,int ,int ) ;
 int ivace_release (int ,int ) ;
 int ivgt_lookup (int ,int ,TYPE_1__**,int *) ;
 scalar_t__ stub1 (TYPE_1__*,int ,int ,int *,int ,int ,int ,int *,int *,scalar_t__*) ;

__attribute__((used)) static kern_return_t
ipc_replace_voucher_value(
 ipc_voucher_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_recipe_command_t command,
 ipc_voucher_t prev_voucher,
 mach_voucher_attr_content_t content,
 mach_voucher_attr_content_size_t content_size)
{
 mach_voucher_attr_value_handle_t previous_vals[MACH_VOUCHER_ATTR_VALUE_MAX_NESTED];
 mach_voucher_attr_value_handle_array_size_t previous_vals_count;
 mach_voucher_attr_value_handle_t new_value;
 mach_voucher_attr_value_flags_t new_flag;
 ipc_voucher_t new_value_voucher;
 ipc_voucher_attr_manager_t ivam;
 ipc_voucher_attr_control_t ivac;
 iv_index_t prev_val_index;
 iv_index_t save_val_index;
 iv_index_t val_index;
 iv_index_t key_index;
 kern_return_t kr;





 key_index = iv_key_to_index(key);
 ivgt_lookup(key_index, TRUE, &ivam, &ivac);
 if (IVAM_NULL == ivam)
  return KERN_INVALID_ARGUMENT;


 save_val_index = iv_lookup(voucher, key_index);







 prev_val_index = (IV_NULL != prev_voucher) ?
           iv_lookup(prev_voucher, key_index) :
           save_val_index;
 ivace_lookup_values(key_index, prev_val_index,
       previous_vals, &previous_vals_count);


 new_value_voucher = IV_NULL;
 kr = (ivam->ivam_get_value)(
        ivam, key, command,
        previous_vals, previous_vals_count,
        content, content_size,
        &new_value, &new_flag, &new_value_voucher);
 if (KERN_SUCCESS != kr) {
  ivac_release(ivac);
  return kr;
 }


 if (IV_NULL != new_value_voucher)
  iv_release(new_value_voucher);







 val_index = ivace_reference_by_value(ivac, new_value, new_flag);
 iv_set(voucher, key_index, val_index);







 ivace_release(key_index, save_val_index);

 return KERN_SUCCESS;
}
