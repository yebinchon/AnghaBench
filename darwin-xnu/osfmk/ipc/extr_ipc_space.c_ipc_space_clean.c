
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ mach_port_type_t ;
typedef int mach_port_name_t ;
typedef size_t mach_port_index_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef size_t ipc_entry_num_t ;
struct TYPE_12__ {int ie_bits; } ;
struct TYPE_11__ {size_t is_table_size; TYPE_2__* is_table; } ;


 int FALSE ;
 int IE_BITS_GEN (int ) ;
 scalar_t__ IE_BITS_TYPE (int ) ;
 int MACH_PORT_MAKE (size_t,int ) ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int ipc_right_destroy (TYPE_1__*,int ,TYPE_2__*,int ,int ) ;
 int is_active (TYPE_1__*) ;
 scalar_t__ is_growing (TYPE_1__*) ;
 int is_write_lock (TYPE_1__*) ;
 int is_write_sleep (TYPE_1__*) ;
 int is_write_unlock (TYPE_1__*) ;

void
ipc_space_clean(
 ipc_space_t space)
{
 ipc_entry_t table;
 ipc_entry_num_t size;
 mach_port_index_t index;






 retry:
 is_write_lock(space);
 while (is_growing(space))
  is_write_sleep(space);

 if (!is_active(space)) {
  is_write_unlock(space);
  return;
 }





 table = space->is_table;
 size = space->is_table_size;

 for (index = 0; index < size; index++) {
  ipc_entry_t entry = &table[index];
  mach_port_type_t type;

  type = IE_BITS_TYPE(entry->ie_bits);
  if (type != MACH_PORT_TYPE_NONE) {
   mach_port_name_t name = MACH_PORT_MAKE(index,
      IE_BITS_GEN(entry->ie_bits));
   ipc_right_destroy(space, name, entry, FALSE, 0);
   goto retry;
  }
 }







 is_write_unlock(space);
}
