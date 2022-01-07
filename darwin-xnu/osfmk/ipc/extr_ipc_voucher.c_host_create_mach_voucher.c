
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* mach_voucher_attr_recipe_t ;
typedef int mach_voucher_attr_recipe_size_t ;
typedef int mach_voucher_attr_raw_recipe_size_t ;
typedef int * mach_voucher_attr_raw_recipe_array_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef scalar_t__ host_t ;
struct TYPE_2__ {int content_size; scalar_t__ previous_voucher; int content; int command; int key; } ;


 int FALSE ;
 scalar_t__ HOST_NULL ;
 scalar_t__ IV_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_NULL ;
 scalar_t__ convert_port_name_to_voucher (scalar_t__) ;
 scalar_t__ ipc_execute_voucher_recipe_command (scalar_t__,int ,int ,scalar_t__,int ,int,int ) ;
 int ipc_voucher_release (scalar_t__) ;
 scalar_t__ iv_alloc (int ) ;
 int iv_dealloc (scalar_t__,int ) ;
 scalar_t__ iv_dedup (scalar_t__) ;
 int ivgt_keys_in_use ;

kern_return_t
host_create_mach_voucher(
 host_t host,
 mach_voucher_attr_raw_recipe_array_t recipes,
 mach_voucher_attr_raw_recipe_size_t recipe_size,
 ipc_voucher_t *new_voucher)
{
 mach_voucher_attr_recipe_t sub_recipe;
 mach_voucher_attr_recipe_size_t recipe_used = 0;
 ipc_voucher_t voucher = IV_NULL;
 kern_return_t kr = KERN_SUCCESS;

 if (host == HOST_NULL)
  return KERN_INVALID_ARGUMENT;


 if (0 == recipe_size) {
  *new_voucher = IV_NULL;
  return KERN_SUCCESS;
 }


 voucher = iv_alloc(ivgt_keys_in_use);
 if (IV_NULL == voucher)
  return KERN_RESOURCE_SHORTAGE;


 while (0 < recipe_size - recipe_used) {
  ipc_voucher_t prev_iv;

  if (recipe_size - recipe_used < sizeof(*sub_recipe)) {
   kr = KERN_INVALID_ARGUMENT;
   break;
  }


  sub_recipe = (mach_voucher_attr_recipe_t)(void *)&recipes[recipe_used];
  if (recipe_size - recipe_used - sizeof(*sub_recipe) < sub_recipe->content_size) {
   kr = KERN_INVALID_ARGUMENT;
   break;
  }
  recipe_used += sizeof(*sub_recipe) + sub_recipe->content_size;


  prev_iv = convert_port_name_to_voucher(sub_recipe->previous_voucher);
  if (MACH_PORT_NULL != sub_recipe->previous_voucher && IV_NULL == prev_iv) {
   kr = KERN_INVALID_CAPABILITY;
   break;
  }

  kr = ipc_execute_voucher_recipe_command(voucher,
       sub_recipe->key,
       sub_recipe->command,
       prev_iv,
       sub_recipe->content,
       sub_recipe->content_size,
       FALSE);
  ipc_voucher_release(prev_iv);

  if (KERN_SUCCESS != kr)
   break;
 }

 if (KERN_SUCCESS == kr) {
  *new_voucher = iv_dedup(voucher);
 } else {
  *new_voucher = IV_NULL;
  iv_dealloc(voucher, FALSE);
 }
 return kr;
}
