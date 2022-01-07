
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct stringhead {TYPE_2__* lh_first; } ;
struct TYPE_5__ {TYPE_2__* le_next; } ;
struct TYPE_6__ {char const* str; scalar_t__ refcount; TYPE_1__ hash_chain; } ;
typedef TYPE_2__ string_t ;


 int ENOENT ;
 int FREE (TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_TEMP ;
 size_t NUM_STRCACHE_LOCKS ;
 int OSAddAtomic (int,int *) ;
 int filled_buckets ;
 int hash_chain ;
 size_t hash_string (char const*,int ) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int * strcache_mtx_locks ;
 struct stringhead* string_ref_table ;
 size_t string_table_mask ;
 int strtable_rw_lock ;

int
vfs_removename(const char *nameref)
{
 struct stringhead *head;
 string_t *entry;
 uint32_t hashval;
 uint32_t hash_index;
        uint32_t lock_index;
 int retval = ENOENT;

 hashval = hash_string(nameref, 0);






 lck_rw_lock_shared(strtable_rw_lock);





 hash_index = hashval & string_table_mask;
 lock_index = hash_index % NUM_STRCACHE_LOCKS;

 head = &string_ref_table[hash_index];

 lck_mtx_lock_spin(&strcache_mtx_locks[lock_index]);

 for (entry = head->lh_first; entry != ((void*)0); entry = entry->hash_chain.le_next) {
  if (entry->str == nameref) {
   entry->refcount--;

   if (entry->refcount == 0) {
    LIST_REMOVE(entry, hash_chain);

    if (head->lh_first == ((void*)0)) {
     OSAddAtomic(-1, &filled_buckets);
    }
   } else {
    entry = ((void*)0);
   }
   retval = 0;
   break;
  }
 }
 lck_mtx_unlock(&strcache_mtx_locks[lock_index]);
 lck_rw_done(strtable_rw_lock);

 if (entry != ((void*)0))
  FREE(entry, M_TEMP);

 return retval;
}
