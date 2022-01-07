
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct ipc_entry {scalar_t__ ie_object; size_t ie_next; int ie_request; int ie_bits; } ;
typedef size_t mach_port_index_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_table_size_t ;
typedef scalar_t__ ipc_table_index_t ;
typedef scalar_t__ ipc_table_elems_t ;
typedef TYPE_2__* ipc_space_t ;
typedef struct ipc_entry* ipc_entry_t ;
typedef scalar_t__ ipc_entry_num_t ;
typedef int event_t ;
struct TYPE_15__ {scalar_t__ is_low_mod; scalar_t__ is_high_mod; scalar_t__ is_table_size; int is_table_free; TYPE_1__* is_table_next; struct ipc_entry* is_table; } ;
struct TYPE_14__ {scalar_t__ its_size; } ;


 scalar_t__ IE_BITS_TYPE (int ) ;
 struct ipc_entry* IE_NULL ;
 scalar_t__ IO_NULL ;
 scalar_t__ IPC_OBJECT_NULL ;
 scalar_t__ ITS_SIZE_NONE ;
 int KERN_NO_SPACE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 scalar_t__ MACH_PORT_TYPE_SEND ;
 int assert (int) ;
 int ipc_entry_grow_count ;
 scalar_t__ ipc_entry_grow_freelist_entries ;
 scalar_t__ ipc_entry_grow_freelist_entries_max ;
 int ipc_entry_grow_rescan ;
 int ipc_entry_grow_rescan_entries ;
 size_t ipc_entry_grow_rescan_entries_max ;
 scalar_t__ ipc_entry_grow_rescan_max ;
 int ipc_hash_table_delete (struct ipc_entry*,scalar_t__,scalar_t__,size_t,struct ipc_entry*) ;
 int ipc_hash_table_insert (struct ipc_entry*,scalar_t__,scalar_t__,size_t,struct ipc_entry*) ;
 int ipc_space_rand_freelist (TYPE_2__*,struct ipc_entry*,scalar_t__,scalar_t__) ;
 int is_active (TYPE_2__*) ;
 int is_done_growing (TYPE_2__*) ;
 scalar_t__ is_growing (TYPE_2__*) ;
 int is_start_growing (TYPE_2__*) ;
 int is_write_lock (TYPE_2__*) ;
 int is_write_sleep (TYPE_2__*) ;
 int is_write_unlock (TYPE_2__*) ;
 struct ipc_entry* it_entries_alloc (TYPE_1__*) ;
 int it_entries_free (TYPE_1__*,struct ipc_entry*) ;
 int memset (void*,int ,scalar_t__) ;
 int thread_wakeup (int ) ;

kern_return_t
ipc_entry_grow_table(
 ipc_space_t space,
 ipc_table_elems_t target_size)
{
 ipc_entry_num_t osize, size, nsize, psize;

 ipc_entry_t otable, table;
 ipc_table_size_t oits, its, nits;
 mach_port_index_t i, free_index;
 mach_port_index_t low_mod, hi_mod;
 ipc_table_index_t sanity;



 assert(is_active(space));

 if (is_growing(space)) {





  is_write_sleep(space);
  return KERN_SUCCESS;
 }

 otable = space->is_table;

 its = space->is_table_next;
 size = its->its_size;





 oits = its - 1;
 osize = oits->its_size;






 if (target_size != ITS_SIZE_NONE) {
  if (target_size <= osize) {

   return KERN_SUCCESS;
  }

  psize = osize;
  while ((psize != size) && (target_size > size)) {
   psize = size;
   its++;
   size = its->its_size;
  }
  if (psize == size) {
   is_write_unlock(space);
   return KERN_NO_SPACE;
  }
 }

 if (osize == size) {
  is_write_unlock(space);
  return KERN_NO_SPACE;
 }

 nits = its + 1;
 nsize = nits->its_size;
 assert((osize < size) && (size <= nsize));
 is_start_growing(space);
 space->is_low_mod = osize;
 space->is_high_mod = 0;



 is_write_unlock(space);

 table = it_entries_alloc(its);
 if (table == IE_NULL) {
  is_write_lock(space);
  is_done_growing(space);
  is_write_unlock(space);
  thread_wakeup((event_t) space);
  return KERN_RESOURCE_SHORTAGE;
 }

 ipc_space_rand_freelist(space, table, osize, size);


 memset((void *)table, 0, osize * sizeof(*table));

 low_mod = 0;
 hi_mod = osize - 1;
 rescan:
 for (i = low_mod; i <= hi_mod; i++) {
  ipc_entry_t entry = &table[i];
  struct ipc_entry osnap = otable[i];

  if (entry->ie_object != osnap.ie_object ||
      IE_BITS_TYPE(entry->ie_bits) != IE_BITS_TYPE(osnap.ie_bits)) {

   if (entry->ie_object != IO_NULL &&
       IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_SEND)
    ipc_hash_table_delete(table, size, entry->ie_object, i, entry);

   entry->ie_object = osnap.ie_object;
   entry->ie_bits = osnap.ie_bits;
   entry->ie_request = osnap.ie_request;

   if (entry->ie_object != IO_NULL &&
       IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_SEND)
    ipc_hash_table_insert(table, size, entry->ie_object, i, entry);
  } else {
   assert(entry->ie_object == osnap.ie_object);
   entry->ie_bits = osnap.ie_bits;
   entry->ie_request = osnap.ie_request;
  }

 }
 table[0].ie_next = otable[0].ie_next;






 free_index = 0;
 for (sanity = 0; sanity < osize; sanity++) {
  if (table[free_index].ie_object != IPC_OBJECT_NULL)
   break;
  i = table[free_index].ie_next;
  if (i == 0 || i >= osize)
   break;
  free_index = i;
 }






 is_write_lock(space);
 if (!is_active(space)) {




  is_done_growing(space);
  is_write_unlock(space);
  thread_wakeup((event_t) space);
  it_entries_free(its, table);
  is_write_lock(space);
  return KERN_SUCCESS;
 }


 if (space->is_low_mod < osize) {
  assert(space->is_high_mod > 0);
  low_mod = space->is_low_mod;
  space->is_low_mod = osize;
  hi_mod = space->is_high_mod;
  space->is_high_mod = 0;
  is_write_unlock(space);
  goto rescan;
 }


 assert(table[free_index].ie_next == 0 &&
        table[free_index].ie_object == IO_NULL);
 table[free_index].ie_next = osize;

 assert(space->is_table == otable);
 assert((space->is_table_next == its) ||
     (target_size != ITS_SIZE_NONE));
 assert(space->is_table_size == osize);

 space->is_table = table;
 space->is_table_size = size;
 space->is_table_next = nits;
 space->is_table_free += size - osize;

 is_done_growing(space);
 is_write_unlock(space);

 thread_wakeup((event_t) space);




 it_entries_free(oits, otable);
 is_write_lock(space);

 return KERN_SUCCESS;
}
