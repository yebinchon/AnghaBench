
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_voucher_attr_raw_recipe_t ;
typedef int mach_voucher_attr_key_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_voucher_extract_attr_recipe (int ,int ,int ,int *) ;
 scalar_t__ mach_voucher_extract_attr_recipe_trap (int ,int ,int ,int *) ;

kern_return_t
mach_voucher_extract_attr_recipe(
 mach_port_name_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_raw_recipe_t recipe,
 mach_msg_type_number_t *recipe_size)
{
 kern_return_t rv;

 rv = mach_voucher_extract_attr_recipe_trap(voucher, key, recipe, recipe_size);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_voucher_extract_attr_recipe(voucher, key, recipe, recipe_size);

 return rv;
}
