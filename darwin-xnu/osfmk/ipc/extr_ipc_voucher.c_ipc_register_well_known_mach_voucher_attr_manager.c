
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef int mach_voucher_attr_key_t ;
typedef int kern_return_t ;
typedef size_t iv_index_t ;
typedef scalar_t__ ipc_voucher_attr_manager_t ;
typedef TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_10__ {scalar_t__ ivgte_manager; int ivgte_key; TYPE_2__* ivgte_control; } ;
struct TYPE_9__ {TYPE_1__* ivac_table; } ;
struct TYPE_8__ {scalar_t__ ivace_next; scalar_t__ ivace_index; int ivace_persist; void* ivace_made; void* ivace_refs; int ivace_value; } ;


 void* IVACE_REFS_MAX ;
 TYPE_2__* IVAC_NULL ;
 scalar_t__ IVAM_NULL ;
 scalar_t__ IV_HASH_END ;
 size_t IV_UNUSED_KEYINDEX ;
 size_t IV_UNUSED_VALINDEX ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int TRUE ;
 int assert (int) ;
 TYPE_5__* iv_global_table ;
 size_t iv_hash_value (size_t,int ) ;
 size_t iv_key_to_index (int ) ;
 TYPE_2__* ivac_alloc (size_t) ;
 int ivac_release (TYPE_2__*) ;
 int ivgt_lock () ;
 int ivgt_unlock () ;

kern_return_t
ipc_register_well_known_mach_voucher_attr_manager(
 ipc_voucher_attr_manager_t manager,
 mach_voucher_attr_value_handle_t default_value,
        mach_voucher_attr_key_t key,
 ipc_voucher_attr_control_t *control)
{
 ipc_voucher_attr_control_t new_control;
 iv_index_t key_index;
 iv_index_t hash_index;

 if (IVAM_NULL == manager)
  return KERN_INVALID_ARGUMENT;

 key_index = iv_key_to_index(key);
 if (IV_UNUSED_KEYINDEX == key_index)
  return KERN_INVALID_ARGUMENT;

 new_control = ivac_alloc(key_index);
 if (IVAC_NULL == new_control)
  return KERN_RESOURCE_SHORTAGE;


 new_control->ivac_table[IV_UNUSED_VALINDEX].ivace_value = default_value;
 new_control->ivac_table[IV_UNUSED_VALINDEX].ivace_refs = IVACE_REFS_MAX;
 new_control->ivac_table[IV_UNUSED_VALINDEX].ivace_made = IVACE_REFS_MAX;
 new_control->ivac_table[IV_UNUSED_VALINDEX].ivace_persist = TRUE;
 assert(IV_HASH_END == new_control->ivac_table[IV_UNUSED_VALINDEX].ivace_next);

 ivgt_lock();
 if (IVAM_NULL != iv_global_table[key_index].ivgte_manager) {
  ivgt_unlock();
  ivac_release(new_control);
  return KERN_INVALID_ARGUMENT;
 }


 iv_global_table[key_index].ivgte_manager = manager;
 iv_global_table[key_index].ivgte_control = new_control;
 iv_global_table[key_index].ivgte_key = key;


 hash_index = iv_hash_value(key_index, default_value);
 assert(IV_HASH_END == new_control->ivac_table[hash_index].ivace_index);
 new_control->ivac_table[hash_index].ivace_index = IV_UNUSED_VALINDEX;

 ivgt_unlock();


 *control = new_control;

 return KERN_SUCCESS;
}
