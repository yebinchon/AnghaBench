
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef scalar_t__ mach_voucher_attr_value_handle_array_size_t ;
typedef TYPE_1__* mach_voucher_attr_recipe_t ;
typedef scalar_t__ mach_voucher_attr_raw_recipe_t ;
typedef int mach_voucher_attr_raw_recipe_size_t ;
typedef int mach_voucher_attr_key_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ iv_index_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef TYPE_2__* ipc_voucher_attr_manager_t ;
struct TYPE_7__ {scalar_t__ (* ivam_extract_content ) (TYPE_2__*,int ,int *,scalar_t__,int *,int ,int*) ;} ;
struct TYPE_6__ {int content_size; int content; int command; int previous_voucher; int key; } ;


 int FALSE ;
 TYPE_2__* IVAM_NULL ;
 scalar_t__ IV_NULL ;
 scalar_t__ IV_UNUSED_VALINDEX ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_NO_SPACE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_NOOP ;
 int MACH_VOUCHER_ATTR_VALUE_MAX_NESTED ;
 int MACH_VOUCHER_NAME_NULL ;
 int assert (int) ;
 scalar_t__ iv_key_to_index (int ) ;
 scalar_t__ iv_lookup (scalar_t__,scalar_t__) ;
 int ivace_lookup_values (scalar_t__,scalar_t__,int *,scalar_t__*) ;
 int ivgt_lookup (scalar_t__,int ,TYPE_2__**,int *) ;
 scalar_t__ stub1 (TYPE_2__*,int ,int *,scalar_t__,int *,int ,int*) ;

kern_return_t
mach_voucher_extract_attr_recipe(
 ipc_voucher_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_raw_recipe_t raw_recipe,
 mach_voucher_attr_raw_recipe_size_t *in_out_size)
{
 mach_voucher_attr_value_handle_t vals[MACH_VOUCHER_ATTR_VALUE_MAX_NESTED];
 mach_voucher_attr_value_handle_array_size_t vals_count;
 ipc_voucher_attr_manager_t manager;
 mach_voucher_attr_recipe_t recipe;
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

 if (*in_out_size < sizeof(*recipe))
  return KERN_NO_SPACE;

 recipe = (mach_voucher_attr_recipe_t)(void *)raw_recipe;
 recipe->key = key;
 recipe->command = MACH_VOUCHER_ATTR_NOOP;
 recipe->previous_voucher = MACH_VOUCHER_NAME_NULL;
 recipe->content_size = *in_out_size - sizeof(*recipe);







 ivgt_lookup(key_index, FALSE, &manager, ((void*)0));
 if (IVAM_NULL == manager) {
  return KERN_INVALID_ARGUMENT;
 }





 ivace_lookup_values(key_index, value_index,
       vals, &vals_count);
 assert(0 < vals_count);


 kr = (manager->ivam_extract_content)(manager, key,
          vals, vals_count,
          &recipe->command,
          recipe->content, &recipe->content_size);
 if (KERN_SUCCESS == kr) {
   assert(*in_out_size - sizeof(*recipe) >= recipe->content_size);
   *in_out_size = sizeof(*recipe) + recipe->content_size;
 }

 return kr;
}
