
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_voucher_attr_value_handle_t ;
typedef size_t iv_index_t ;
typedef TYPE_1__* ipc_voucher_attr_control_t ;
struct TYPE_5__ {TYPE_1__* ivgte_control; } ;
struct TYPE_4__ {int ivac_init_table_size; } ;


 TYPE_1__* IVAC_NULL ;
 size_t IV_HASH_VAL (int ,int ) ;
 int assert (int) ;
 TYPE_2__* iv_global_table ;

__attribute__((used)) static inline iv_index_t
iv_hash_value(
 iv_index_t key_index,
 mach_voucher_attr_value_handle_t value)
{
 ipc_voucher_attr_control_t ivac;

 ivac = iv_global_table[key_index].ivgte_control;
 assert(IVAC_NULL != ivac);
 return IV_HASH_VAL(ivac->ivac_init_table_size, value);
}
