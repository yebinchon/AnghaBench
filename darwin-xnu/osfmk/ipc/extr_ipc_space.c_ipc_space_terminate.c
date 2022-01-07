
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ mach_port_type_t ;
typedef int mach_port_name_t ;
typedef size_t mach_port_index_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef size_t ipc_entry_num_t ;
struct TYPE_16__ {int ie_bits; } ;
struct TYPE_15__ {size_t is_table_size; scalar_t__ is_table_free; scalar_t__ is_table_next; TYPE_2__* is_table; } ;


 int IE_BITS_GEN (int ) ;
 scalar_t__ IE_BITS_TYPE (int ) ;
 TYPE_1__* IS_NULL ;
 int MACH_PORT_MAKE (size_t,int ) ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int assert (int) ;
 int ipc_right_terminate (TYPE_1__*,int ,TYPE_2__*) ;
 int is_active (TYPE_1__*) ;
 scalar_t__ is_growing (TYPE_1__*) ;
 int is_mark_inactive (TYPE_1__*) ;
 int is_release (TYPE_1__*) ;
 int is_write_lock (TYPE_1__*) ;
 int is_write_sleep (TYPE_1__*) ;
 int is_write_unlock (TYPE_1__*) ;
 int it_entries_free (scalar_t__,TYPE_2__*) ;

void
ipc_space_terminate(
 ipc_space_t space)
{
 ipc_entry_t table;
 ipc_entry_num_t size;
 mach_port_index_t index;

 assert(space != IS_NULL);

 is_write_lock(space);
 if (!is_active(space)) {
  is_write_unlock(space);
  return;
 }
 is_mark_inactive(space);






 while (is_growing(space))
  is_write_sleep(space);

 is_write_unlock(space);






 table = space->is_table;
 size = space->is_table_size;

 for (index = 0; index < size; index++) {
  ipc_entry_t entry = &table[index];
  mach_port_type_t type;

  type = IE_BITS_TYPE(entry->ie_bits);
  if (type != MACH_PORT_TYPE_NONE) {
   mach_port_name_t name;

   name = MACH_PORT_MAKE(index,
           IE_BITS_GEN(entry->ie_bits));
   ipc_right_terminate(space, name, entry);
  }
 }

 it_entries_free(space->is_table_next-1, table);
 space->is_table_size = 0;
 space->is_table_free = 0;






 is_release(space);
}
