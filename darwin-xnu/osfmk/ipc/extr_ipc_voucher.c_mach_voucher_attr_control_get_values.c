
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_array_t ;
typedef scalar_t__ mach_voucher_attr_value_handle_array_size_t ;
typedef int kern_return_t ;
typedef int iv_index_t ;
typedef TYPE_1__* ipc_voucher_t ;
typedef TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_9__ {int ivac_key_index; } ;
struct TYPE_8__ {int iv_refs; } ;


 TYPE_2__* IPC_VOUCHER_ATTR_CONTROL_NULL ;
 TYPE_1__* IV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_CAPABILITY ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int iv_lookup (TYPE_1__*,int ) ;
 int ivace_lookup_values (int ,int ,int ,scalar_t__*) ;
 scalar_t__ os_ref_get_count (int *) ;

kern_return_t
mach_voucher_attr_control_get_values(
 ipc_voucher_attr_control_t control,
 ipc_voucher_t voucher,
 mach_voucher_attr_value_handle_array_t out_values,
 mach_voucher_attr_value_handle_array_size_t *in_out_size)
{
 iv_index_t key_index, value_index;

 if (IPC_VOUCHER_ATTR_CONTROL_NULL == control)
  return KERN_INVALID_CAPABILITY;

 if (IV_NULL == voucher)
  return KERN_INVALID_ARGUMENT;

 if (0 == *in_out_size)
  return KERN_SUCCESS;

 key_index = control->ivac_key_index;

 assert(os_ref_get_count(&voucher->iv_refs) > 0);
 value_index = iv_lookup(voucher, key_index);
 ivace_lookup_values(key_index, value_index,
       out_values, in_out_size);
 return KERN_SUCCESS;
}
