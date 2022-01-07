
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ iv_index_t ;
typedef int * iv_entry_t ;
typedef TYPE_1__* ipc_voucher_t ;
struct TYPE_5__ {scalar_t__ iv_table_size; int * iv_table; int * iv_inline_table; int iv_port; scalar_t__ iv_hash; scalar_t__ iv_sum; int iv_refs; } ;


 int IP_NULL ;
 int * IVE_NULL ;
 scalar_t__ IV_ENTRIES_INLINE ;
 TYPE_1__* IV_NULL ;
 int IV_UNUSED_VALINDEX ;
 int ipc_voucher_zone ;
 int iv_refgrp ;
 scalar_t__ kalloc (int) ;
 int os_ref_init (int *,int *) ;
 scalar_t__ zalloc (int ) ;
 int zfree (int ,TYPE_1__*) ;

ipc_voucher_t
iv_alloc(iv_index_t entries)
{
 ipc_voucher_t iv;
 iv_index_t i;


 iv = (ipc_voucher_t)zalloc(ipc_voucher_zone);
 if (IV_NULL == iv)
  return IV_NULL;

 os_ref_init(&iv->iv_refs, &iv_refgrp);
 iv->iv_sum = 0;
 iv->iv_hash = 0;
 iv->iv_port = IP_NULL;

 if (entries > IV_ENTRIES_INLINE) {
  iv_entry_t table;


  table = (iv_entry_t) kalloc(sizeof(*table) * entries);
  if (IVE_NULL == table) {
   zfree(ipc_voucher_zone, iv);
   return IV_NULL;
  }
  iv->iv_table = table;
  iv->iv_table_size = entries;
 } else {
  iv->iv_table = iv->iv_inline_table;
  iv->iv_table_size = IV_ENTRIES_INLINE;
 }


 for (i=0; i < iv->iv_table_size; i++)
  iv->iv_table[i] = IV_UNUSED_VALINDEX;

 return (iv);
}
