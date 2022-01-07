
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef int mach_voucher_attr_recipe_command_t ;
typedef int mach_voucher_attr_key_t ;
typedef scalar_t__ mach_voucher_attr_content_t ;
typedef int mach_voucher_attr_content_size_t ;
typedef int kern_return_t ;
typedef int iv_index_t ;
typedef TYPE_1__* ipc_voucher_t ;
typedef int boolean_t ;
struct TYPE_10__ {int iv_table_size; } ;


 TYPE_1__* IV_NULL ;
 int IV_UNUSED_VALINDEX ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_CAPABILITY ;
 int KERN_SUCCESS ;

 int MACH_VOUCHER_ATTR_KEY_ALL ;
 int MACH_VOUCHER_ATTR_KEY_NONE ;



 int ipc_directly_replace_voucher_value (TYPE_1__*,int ,int ) ;
 int ipc_replace_voucher_value (TYPE_1__*,int ,int,TYPE_1__*,scalar_t__,int) ;
 int iv_index_to_key (int ) ;
 int iv_key_to_index (int ) ;
 int iv_lookup (TYPE_1__*,int ) ;
 int iv_set (TYPE_1__*,int ,int ) ;
 int ivace_reference_by_index (int ,int ) ;
 int ivace_release (int ,int ) ;
 int ivgt_keys_in_use ;

__attribute__((used)) static kern_return_t
ipc_execute_voucher_recipe_command(
 ipc_voucher_t voucher,
 mach_voucher_attr_key_t key,
 mach_voucher_attr_recipe_command_t command,
 ipc_voucher_t prev_iv,
 mach_voucher_attr_content_t content,
 mach_voucher_attr_content_size_t content_size,
 boolean_t key_priv)
{
 iv_index_t prev_val_index;
 iv_index_t val_index;
 kern_return_t kr;

 switch (command) {
 case 131:


  if (0 < content_size)
   return KERN_INVALID_ARGUMENT;


  if (IV_NULL == prev_iv)
   return KERN_SUCCESS;

  if (MACH_VOUCHER_ATTR_KEY_ALL == key) {
   iv_index_t limit, j;


   limit = (prev_iv->iv_table_size < voucher->iv_table_size) ?
           prev_iv->iv_table_size :
    voucher->iv_table_size;


   for (j = 0; j < limit; j++) {

    val_index = iv_lookup(voucher, j);
    ivace_release(j, val_index);


    prev_val_index = iv_lookup(prev_iv, j);
    ivace_reference_by_index(j, prev_val_index);
    iv_set(voucher, j, prev_val_index);
   }
  } else {
   iv_index_t key_index;


   key_index = iv_key_to_index(key);
   if (ivgt_keys_in_use < key_index)
    return KERN_INVALID_ARGUMENT;


   val_index = iv_lookup(voucher, key_index);
   ivace_release(key_index, val_index);


   prev_val_index = iv_lookup(prev_iv, key_index);
   ivace_reference_by_index(key_index, prev_val_index);
   iv_set(voucher, key_index, prev_val_index);
  }
  break;
 case 129:

  if (0 < content_size)
   return KERN_INVALID_ARGUMENT;

  if (MACH_VOUCHER_ATTR_KEY_ALL == key) {
   iv_index_t limit, j;


   limit = (IV_NULL == prev_iv) ? voucher->iv_table_size :
    ((prev_iv->iv_table_size < voucher->iv_table_size) ?
     prev_iv->iv_table_size : voucher->iv_table_size);


   for (j = 0; j < limit; j++) {
    val_index = iv_lookup(voucher, j);


    if (IV_NULL != prev_iv) {
     prev_val_index = iv_lookup(prev_iv, j);
     if (val_index != prev_val_index)
      continue;
    }

    ivace_release(j, val_index);
    iv_set(voucher, j, IV_UNUSED_VALINDEX);
   }
  } else {
   iv_index_t key_index;


   key_index = iv_key_to_index(key);
   if (ivgt_keys_in_use < key_index)
    return KERN_INVALID_ARGUMENT;

   val_index = iv_lookup(voucher, key_index);


   if (IV_NULL != prev_iv) {
    prev_val_index = iv_lookup(prev_iv, key_index);
    if (val_index != prev_val_index)
     break;
   }


   ivace_release(key_index, val_index);
   iv_set(voucher, key_index, IV_UNUSED_VALINDEX);
  }
  break;







 case 128:
  if (key_priv) {
   mach_voucher_attr_value_handle_t new_value;

   if (sizeof(mach_voucher_attr_value_handle_t) != content_size)
    return KERN_INVALID_ARGUMENT;

   new_value = *(mach_voucher_attr_value_handle_t *)(void *)content;
   kr = ipc_directly_replace_voucher_value(voucher,
        key,
        new_value);
   if (KERN_SUCCESS != kr)
    return kr;
  } else
   return KERN_INVALID_CAPABILITY;
  break;







 case 130:

  if (MACH_VOUCHER_ATTR_KEY_ALL == key) {
   iv_index_t limit, j;


   if (IV_NULL != prev_iv)
    limit = (prev_iv->iv_table_size < voucher->iv_table_size) ?
     prev_iv->iv_table_size :
     voucher->iv_table_size;
   else
    limit = voucher->iv_table_size;


   for (j = 0; j < limit; j++) {
    mach_voucher_attr_key_t j_key;

    j_key = iv_index_to_key(j);


    if (MACH_VOUCHER_ATTR_KEY_NONE == j_key)
     continue;


    kr = ipc_replace_voucher_value(voucher,
              j_key,
              command,
              prev_iv,
              content,
              content_size);
    if (KERN_SUCCESS != kr)
     return kr;
   }
   break;
  }
 default:
  kr = ipc_replace_voucher_value(voucher,
            key,
            command,
            prev_iv,
            content,
            content_size);
  if (KERN_SUCCESS != kr)
   return kr;

  break;
 }
 return KERN_SUCCESS;
}
