
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef scalar_t__ mach_voucher_attr_value_handle_array_size_t ;
typedef TYPE_1__* mach_voucher_attr_recipe_t ;
typedef int mach_voucher_attr_recipe_size_t ;
typedef int * mach_voucher_attr_raw_recipe_array_t ;
typedef int mach_voucher_attr_raw_recipe_array_size_t ;
typedef int mach_voucher_attr_key_t ;
typedef scalar_t__ mach_voucher_attr_content_size_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ iv_index_t ;
typedef TYPE_2__* ipc_voucher_t ;
typedef TYPE_3__* ipc_voucher_attr_manager_t ;
struct TYPE_12__ {scalar_t__ (* ivam_extract_content ) (TYPE_3__*,int ,int *,scalar_t__,int *,int ,scalar_t__*) ;} ;
struct TYPE_11__ {scalar_t__ iv_table_size; } ;
struct TYPE_10__ {scalar_t__ content_size; int content; int command; int key; } ;


 int FALSE ;
 TYPE_3__* IVAM_NULL ;
 TYPE_2__* IV_NULL ;
 scalar_t__ IV_UNUSED_VALINDEX ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_NO_SPACE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_NOOP ;
 int MACH_VOUCHER_ATTR_VALUE_MAX_NESTED ;
 int assert (int) ;
 int iv_index_to_key (scalar_t__) ;
 scalar_t__ iv_lookup (TYPE_2__*,scalar_t__) ;
 int ivace_lookup_values (scalar_t__,scalar_t__,int *,scalar_t__*) ;
 int ivgt_lookup (scalar_t__,int ,TYPE_3__**,int *) ;
 scalar_t__ stub1 (TYPE_3__*,int ,int *,scalar_t__,int *,int ,scalar_t__*) ;

kern_return_t
mach_voucher_extract_all_attr_recipes(
 ipc_voucher_t voucher,
 mach_voucher_attr_raw_recipe_array_t recipes,
 mach_voucher_attr_raw_recipe_array_size_t *in_out_size)
{
 mach_voucher_attr_recipe_size_t recipe_size = *in_out_size;
 mach_voucher_attr_recipe_size_t recipe_used = 0;
 iv_index_t key_index;

 if (IV_NULL == voucher)
  return KERN_INVALID_ARGUMENT;

 for (key_index = 0; key_index < voucher->iv_table_size; key_index++) {
  mach_voucher_attr_value_handle_t vals[MACH_VOUCHER_ATTR_VALUE_MAX_NESTED];
  mach_voucher_attr_value_handle_array_size_t vals_count;
  mach_voucher_attr_content_size_t content_size;
  ipc_voucher_attr_manager_t manager;
  mach_voucher_attr_recipe_t recipe;
  mach_voucher_attr_key_t key;
  iv_index_t value_index;
  kern_return_t kr;


  value_index = iv_lookup(voucher, key_index);
  if (IV_UNUSED_VALINDEX == value_index)
   continue;

  if (recipe_size - recipe_used < sizeof(*recipe))
   return KERN_NO_SPACE;







  ivgt_lookup(key_index, FALSE, &manager, ((void*)0));
  assert(IVAM_NULL != manager);
  if (IVAM_NULL == manager) {
   continue;
  }

  recipe = (mach_voucher_attr_recipe_t)(void *)&recipes[recipe_used];
  content_size = recipe_size - recipe_used - sizeof(*recipe);





  ivace_lookup_values(key_index, value_index,
        vals, &vals_count);
  assert(0 < vals_count);

  key = iv_index_to_key(key_index);

  recipe->key = key;
  recipe->command = MACH_VOUCHER_ATTR_NOOP;
  recipe->content_size = content_size;


  kr = (manager->ivam_extract_content)(manager, key,
          vals, vals_count,
          &recipe->command,
          recipe->content, &recipe->content_size);
  if (KERN_SUCCESS != kr)
   return kr;

  assert(recipe->content_size <= content_size);
  recipe_used += sizeof(*recipe) + recipe->content_size;
 }

 *in_out_size = recipe_used;
 return KERN_SUCCESS;
}
