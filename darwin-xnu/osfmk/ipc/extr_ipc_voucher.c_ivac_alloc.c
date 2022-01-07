
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t natural_t ;
typedef TYPE_1__* ivac_entry_t ;
typedef int ivac_entry ;
typedef int iv_index_t ;
typedef TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_8__ {int ivac_table_size; int ivac_init_table_size; int ivac_freelist; int ivac_key_index; TYPE_1__* ivac_table; int ivac_port; void* ivac_is_growing; int ivac_refs; } ;
struct TYPE_7__ {int ivace_next; void* ivace_free; } ;


 void* FALSE ;
 int IP_NULL ;
 int IVAC_ENTRIES_MIN ;
 TYPE_2__* IVAC_NULL ;
 int IV_FREELIST_END ;
 int IV_HASH_END ;
 int ipc_voucher_attr_control_zone ;
 int ivac_lock_init (TYPE_2__*) ;
 int ivac_refgrp ;
 int ivace_reset_data (TYPE_1__*,size_t) ;
 scalar_t__ kalloc (int) ;
 int os_ref_init (int *,int *) ;
 scalar_t__ zalloc (int ) ;

ipc_voucher_attr_control_t
ivac_alloc(iv_index_t key_index)
{
 ipc_voucher_attr_control_t ivac;
 ivac_entry_t table;
 natural_t i;


 ivac = (ipc_voucher_attr_control_t)zalloc(ipc_voucher_attr_control_zone);
 if (IVAC_NULL == ivac)
  return IVAC_NULL;

 os_ref_init(&ivac->ivac_refs, &ivac_refgrp);
 ivac->ivac_is_growing = FALSE;
 ivac->ivac_port = IP_NULL;


 table = (ivac_entry_t) kalloc(IVAC_ENTRIES_MIN * sizeof(ivac_entry));
 ivac->ivac_table = table;
 ivac->ivac_table_size = IVAC_ENTRIES_MIN;
 ivac->ivac_init_table_size = IVAC_ENTRIES_MIN;
 for (i = 0; i < ivac->ivac_table_size; i++) {
  ivace_reset_data(&table[i], i+1);
 }


 table[0].ivace_next = IV_HASH_END;
 table[0].ivace_free = FALSE;
 table[i-1].ivace_next = IV_FREELIST_END;
 ivac->ivac_freelist = 1;
 ivac_lock_init(ivac);
 ivac->ivac_key_index = key_index;
 return (ivac);
}
