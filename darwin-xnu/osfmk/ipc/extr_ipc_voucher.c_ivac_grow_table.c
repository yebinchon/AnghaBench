
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* ivac_entry_t ;
typedef int ivac_entry ;
typedef int iv_index_t ;
typedef TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_14__ {int ivac_is_growing; int ivac_table_size; int ivac_freelist; TYPE_1__* ivac_table; } ;
struct TYPE_13__ {int ivace_next; } ;


 int IVAC_ENTRIES_MAX ;
 int assert (int) ;
 int ivac_lock (TYPE_2__*) ;
 int ivac_sleep (TYPE_2__*) ;
 int ivac_unlock (TYPE_2__*) ;
 int ivac_wakeup (TYPE_2__*) ;
 int ivace_copy_data (TYPE_1__*,TYPE_1__*) ;
 int ivace_reset_data (TYPE_1__*,int) ;
 TYPE_1__* kalloc (int) ;
 int kfree (TYPE_1__*,int) ;
 int panic (char*,...) ;

__attribute__((used)) static void
ivac_grow_table(ipc_voucher_attr_control_t ivac)
{
 iv_index_t i = 0;


 ivac_entry_t new_table = ((void*)0), old_table = ((void*)0);
 iv_index_t new_size, old_size;

 if (ivac->ivac_is_growing) {
  ivac_sleep(ivac);
  return;
 }

 ivac->ivac_is_growing = 1;
 if (ivac->ivac_table_size >= IVAC_ENTRIES_MAX) {
  panic("Cannot grow ipc space beyond IVAC_ENTRIES_MAX. Some process is leaking vouchers");
  return;
 }

 old_size = ivac->ivac_table_size;
 ivac_unlock(ivac);

 new_size = old_size * 2;

 assert(new_size > old_size);
 assert(new_size < IVAC_ENTRIES_MAX);

 new_table = kalloc(sizeof(ivac_entry) * new_size);
 if (!new_table){
  panic("Failed to grow ivac table to size %d\n", new_size);
  return;
 }


 for (i = old_size; i < new_size; i++) {
  ivace_reset_data(&new_table[i], i+1);
 }

 ivac_lock(ivac);

 for (i = 0; i < ivac->ivac_table_size; i++){
  ivace_copy_data(&ivac->ivac_table[i], &new_table[i]);
 }

 old_table = ivac->ivac_table;

 ivac->ivac_table = new_table;
 ivac->ivac_table_size = new_size;


 ivac->ivac_table[new_size - 1].ivace_next = ivac->ivac_freelist;
 ivac->ivac_freelist = old_size;
 ivac->ivac_is_growing = 0;
 ivac_wakeup(ivac);

 if (old_table){
  ivac_unlock(ivac);
  kfree(old_table, old_size * sizeof(ivac_entry));
  ivac_lock(ivac);
 }
}
