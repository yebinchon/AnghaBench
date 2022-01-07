
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef int mach_voucher_attr_value_handle_array_size_t ;
typedef int mach_voucher_attr_key_t ;
typedef int mach_voucher_attr_content_t ;
typedef int mach_voucher_attr_content_size_t ;
typedef int mach_voucher_attr_command_t ;
typedef int kern_return_t ;
typedef int iv_index_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef TYPE_1__* ipc_voucher_attr_manager_t ;
typedef int ipc_voucher_attr_control_t ;
struct TYPE_5__ {int (* ivam_command ) (TYPE_1__*,int ,int *,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* IVAM_NULL ;
 scalar_t__ IV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int MACH_VOUCHER_ATTR_VALUE_MAX_NESTED ;
 int TRUE ;
 int iv_key_to_index (int ) ;
 int iv_lookup (scalar_t__,int ) ;
 int ivac_release (int ) ;
 int ivace_lookup_values (int ,int ,int *,int *) ;
 int ivgt_lookup (int ,int ,TYPE_1__**,int *) ;
 int stub1 (TYPE_1__*,int ,int *,int ,int ,int ,int ,int ,int *) ;

kern_return_t
mach_voucher_attr_command(
 ipc_voucher_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_command_t command,
 mach_voucher_attr_content_t in_content,
 mach_voucher_attr_content_size_t in_content_size,
 mach_voucher_attr_content_t out_content,
 mach_voucher_attr_content_size_t *out_content_size)
{
 mach_voucher_attr_value_handle_t vals[MACH_VOUCHER_ATTR_VALUE_MAX_NESTED];
 mach_voucher_attr_value_handle_array_size_t vals_count;
 ipc_voucher_attr_manager_t manager;
 ipc_voucher_attr_control_t control;
 iv_index_t value_index;
 iv_index_t key_index;
 kern_return_t kr;


 if (IV_NULL == voucher)
  return KERN_INVALID_ARGUMENT;

 key_index = iv_key_to_index(key);
 ivgt_lookup(key_index, TRUE, &manager, &control);
 if (IVAM_NULL == manager) {
  return KERN_INVALID_ARGUMENT;
 }







 value_index = iv_lookup(voucher, key_index);
 ivace_lookup_values(key_index, value_index,
       vals, &vals_count);


 kr = (manager->ivam_command)(manager, key,
         vals, vals_count,
         command,
         in_content, in_content_size,
         out_content, out_content_size);


 ivac_release(control);

 return kr;
}
