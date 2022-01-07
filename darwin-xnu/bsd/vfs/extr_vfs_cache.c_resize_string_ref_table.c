
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t u_long ;
struct stringhead {TYPE_2__* lh_first; } ;
struct TYPE_4__ {TYPE_2__* le_next; } ;
struct TYPE_5__ {TYPE_1__ hash_chain; scalar_t__ str; } ;
typedef TYPE_2__ string_t ;


 int FREE (struct stringhead*,int ) ;
 int LIST_INSERT_HEAD (struct stringhead*,TYPE_2__*,int ) ;
 int M_CACHE ;
 int filled_buckets ;
 int hash_chain ;
 size_t hash_string (char const*,int ) ;
 struct stringhead* hashinit (int,int ,size_t*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int printf (char*) ;
 struct stringhead* string_ref_table ;
 int string_table_mask ;
 int strtable_rw_lock ;

__attribute__((used)) static void
resize_string_ref_table(void)
{
 struct stringhead *new_table;
 struct stringhead *old_table;
 struct stringhead *old_head, *head;
 string_t *entry, *next;
 uint32_t i, hashval;
 u_long new_mask, old_mask;
 lck_rw_lock_exclusive(strtable_rw_lock);

 if (4 * filled_buckets < ((string_table_mask + 1) * 3)) {
  lck_rw_done(strtable_rw_lock);
  return;
 }
 new_table = hashinit((string_table_mask + 1) * 2, M_CACHE, &new_mask);

 if (new_table == ((void*)0)) {
  printf("failed to resize the hash table.\n");
  lck_rw_done(strtable_rw_lock);
  return;
 }


 old_table = string_ref_table;
 string_ref_table = new_table;
 old_mask = string_table_mask;
 string_table_mask = new_mask;
 filled_buckets = 0;




 for (i = 0; i <= old_mask; i++) {
  old_head = &old_table[i];
  for (entry = old_head->lh_first; entry != ((void*)0); entry = next) {
   hashval = hash_string((const char *)entry->str, 0);
   head = &string_ref_table[hashval & string_table_mask];
   if (head->lh_first == ((void*)0)) {
    filled_buckets++;
   }
   next = entry->hash_chain.le_next;
   LIST_INSERT_HEAD(head, entry, hash_chain);
  }
 }
 lck_rw_done(strtable_rw_lock);

 FREE(old_table, M_CACHE);
}
