
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash_list_lock; int hash_list; } ;


 int ATM_MAX_HASH_TABLE_SIZE ;
 int atm_lock_attr ;
 int atm_lock_grp ;
 TYPE_1__* atm_value_hash_table ;
 int lck_mtx_init (int *,int *,int *) ;
 int queue_init (int *) ;

__attribute__((used)) static void
atm_hash_table_init()
{
 int i;

 for (i = 0; i < ATM_MAX_HASH_TABLE_SIZE; i++) {
  queue_init(&atm_value_hash_table[i].hash_list);
  lck_mtx_init(&atm_value_hash_table[i].hash_list_lock, &atm_lock_grp, &atm_lock_attr);
 }
}
