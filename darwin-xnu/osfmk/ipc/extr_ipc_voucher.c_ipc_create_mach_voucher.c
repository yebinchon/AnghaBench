
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef TYPE_1__* ipc_voucher_attr_recipe_t ;
typedef int ipc_voucher_attr_recipe_size_t ;
typedef int * ipc_voucher_attr_raw_recipe_array_t ;
typedef int ipc_voucher_attr_raw_recipe_array_size_t ;
struct TYPE_2__ {int content_size; int content; int previous_voucher; int command; int key; } ;


 int FALSE ;
 scalar_t__ IV_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ipc_execute_voucher_recipe_command (scalar_t__,int ,int ,int ,int ,int,int ) ;
 scalar_t__ iv_alloc (int ) ;
 int iv_dealloc (scalar_t__,int ) ;
 scalar_t__ iv_dedup (scalar_t__) ;
 int ivgt_keys_in_use ;

kern_return_t
ipc_create_mach_voucher(
 ipc_voucher_attr_raw_recipe_array_t recipes,
 ipc_voucher_attr_raw_recipe_array_size_t recipe_size,
 ipc_voucher_t *new_voucher)
{
 ipc_voucher_attr_recipe_t sub_recipe;
 ipc_voucher_attr_recipe_size_t recipe_used = 0;
 ipc_voucher_t voucher;
 kern_return_t kr = KERN_SUCCESS;


 if (0 == recipe_size) {
  *new_voucher = IV_NULL;
  return KERN_SUCCESS;
 }


 voucher = iv_alloc(ivgt_keys_in_use);
 if (IV_NULL == voucher)
  return KERN_RESOURCE_SHORTAGE;


 while (0 < recipe_size - recipe_used) {

  if (recipe_size - recipe_used < sizeof(*sub_recipe)) {
   kr = KERN_INVALID_ARGUMENT;
   break;
  }


  sub_recipe = (ipc_voucher_attr_recipe_t)(void *)&recipes[recipe_used];
  if (recipe_size - recipe_used - sizeof(*sub_recipe) < sub_recipe->content_size) {
   kr = KERN_INVALID_ARGUMENT;
   break;
  }
  recipe_used += sizeof(*sub_recipe) + sub_recipe->content_size;

  kr = ipc_execute_voucher_recipe_command(voucher,
       sub_recipe->key,
       sub_recipe->command,
       sub_recipe->previous_voucher,
       sub_recipe->content,
       sub_recipe->content_size,
       FALSE);
  if (KERN_SUCCESS != kr)
   break;
 }

 if (KERN_SUCCESS == kr) {
  *new_voucher = iv_dedup(voucher);
 } else {
  iv_dealloc(voucher, FALSE);
  *new_voucher = IV_NULL;
 }
 return kr;
}
