
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef scalar_t__ mach_voucher_attr_value_handle_array_size_t ;
typedef int mach_voucher_attr_recipe_command_t ;
typedef int mach_voucher_attr_key_t ;
typedef int mach_voucher_attr_content_t ;
typedef scalar_t__ mach_voucher_attr_content_size_t ;
typedef int kern_return_t ;
typedef scalar_t__ iv_index_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef TYPE_1__* ipc_voucher_attr_manager_t ;
struct TYPE_5__ {int (* ivam_extract_content ) (TYPE_1__*,int ,int *,scalar_t__,int *,int ,scalar_t__*) ;} ;


 int FALSE ;
 TYPE_1__* IVAM_NULL ;
 scalar_t__ IV_NULL ;
 scalar_t__ IV_UNUSED_VALINDEX ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_VALUE_MAX_NESTED ;
 int assert (int) ;
 scalar_t__ iv_key_to_index (int ) ;
 scalar_t__ iv_lookup (scalar_t__,scalar_t__) ;
 int ivace_lookup_values (scalar_t__,scalar_t__,int *,scalar_t__*) ;
 int ivgt_lookup (scalar_t__,int ,TYPE_1__**,int *) ;
 int stub1 (TYPE_1__*,int ,int *,scalar_t__,int *,int ,scalar_t__*) ;

kern_return_t
mach_voucher_extract_attr_content(
 ipc_voucher_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_content_t content,
 mach_voucher_attr_content_size_t *in_out_size)
{
 mach_voucher_attr_value_handle_t vals[MACH_VOUCHER_ATTR_VALUE_MAX_NESTED];
 mach_voucher_attr_value_handle_array_size_t vals_count;
 mach_voucher_attr_recipe_command_t command;
 ipc_voucher_attr_manager_t manager;
 iv_index_t value_index;
 iv_index_t key_index;
 kern_return_t kr;


 if (IV_NULL == voucher)
  return KERN_INVALID_ARGUMENT;

 key_index = iv_key_to_index(key);

 value_index = iv_lookup(voucher, key_index);
 if (IV_UNUSED_VALINDEX == value_index) {
  *in_out_size = 0;
  return KERN_SUCCESS;
 }







 ivgt_lookup(key_index, FALSE, &manager, ((void*)0));
 if (IVAM_NULL == manager) {
  return KERN_INVALID_ARGUMENT;
 }





 ivace_lookup_values(key_index, value_index,
       vals, &vals_count);
 assert(0 < vals_count);



 kr = (manager->ivam_extract_content)(manager, key,
          vals, vals_count,
          &command,
          content, in_out_size);
 return kr;
}
