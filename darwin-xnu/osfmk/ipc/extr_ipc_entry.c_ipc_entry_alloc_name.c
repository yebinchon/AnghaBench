
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef scalar_t__ mach_port_index_t ;
typedef scalar_t__ mach_port_gen_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
struct TYPE_12__ {scalar_t__ ie_next; scalar_t__ ie_object; int ie_request; scalar_t__ ie_bits; } ;
struct TYPE_11__ {scalar_t__ is_table_size; int is_table_free; TYPE_2__* is_table; } ;


 scalar_t__ IE_BITS_GEN (scalar_t__) ;
 scalar_t__ IE_BITS_TYPE (scalar_t__) ;
 int IE_REQ_NONE ;
 scalar_t__ IO_NULL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_NO_SPACE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_GEN (int ) ;
 scalar_t__ MACH_PORT_INDEX (int ) ;
 int MACH_PORT_MAKE (scalar_t__,scalar_t__) ;
 int MACH_PORT_VALID (int ) ;
 int assert (int) ;
 scalar_t__ ipc_entry_grow_table (TYPE_1__*,scalar_t__) ;
 int ipc_entry_modified (TYPE_1__*,int ,TYPE_2__*) ;
 scalar_t__ ipc_table_max_entries () ;
 int is_active (TYPE_1__*) ;
 int is_write_lock (TYPE_1__*) ;
 int is_write_unlock (TYPE_1__*) ;

kern_return_t
ipc_entry_alloc_name(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t *entryp)
{
 mach_port_index_t index = MACH_PORT_INDEX(name);
 mach_port_gen_t gen = MACH_PORT_GEN(name);

 if (index > ipc_table_max_entries())
  return KERN_NO_SPACE;

 assert(MACH_PORT_VALID(name));


 is_write_lock(space);

 for (;;) {
  ipc_entry_t entry;

  if (!is_active(space)) {
   is_write_unlock(space);
   return KERN_INVALID_TASK;
  }
  if (index < space->is_table_size) {
   ipc_entry_t table = space->is_table;

   entry = &table[index];

   if (index == 0) {

    assert(!IE_BITS_TYPE(entry->ie_bits));
    assert(!IE_BITS_GEN(entry->ie_bits));
    is_write_unlock(space);
    return KERN_FAILURE;
   } else if (IE_BITS_TYPE(entry->ie_bits)) {
    if (IE_BITS_GEN(entry->ie_bits) == gen) {

     *entryp = entry;
     return KERN_SUCCESS;
    } else {


     is_write_unlock(space);
     return KERN_FAILURE;
    }
   } else {
    mach_port_index_t free_index, next_index;






    for (free_index = 0;
         (next_index = table[free_index].ie_next)
       != index;
         free_index = next_index)
     continue;

    table[free_index].ie_next =
     table[next_index].ie_next;
    space->is_table_free--;


    ipc_entry_modified(space,
         MACH_PORT_MAKE(free_index,
          IE_BITS_GEN(table[free_index].ie_bits)),
         &table[free_index]);

    entry->ie_bits = gen;
    entry->ie_request = IE_REQ_NONE;
    *entryp = entry;

    assert(entry->ie_object == IO_NULL);
    return KERN_SUCCESS;
   }
  }







                kern_return_t kr;
  kr = ipc_entry_grow_table(space, index + 1);
  assert(kr != KERN_NO_SPACE);
  if (kr != KERN_SUCCESS) {

   return kr;
  }
  continue;
 }
}
