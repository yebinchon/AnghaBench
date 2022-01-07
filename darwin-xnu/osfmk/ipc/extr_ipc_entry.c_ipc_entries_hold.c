
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t mach_port_index_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
struct TYPE_6__ {size_t ie_next; scalar_t__ ie_object; } ;
struct TYPE_5__ {size_t is_table_size; TYPE_2__* is_table; } ;


 scalar_t__ IO_NULL ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int is_active (TYPE_1__*) ;

kern_return_t
ipc_entries_hold(
 ipc_space_t space,
 uint32_t entries_needed)
{

 ipc_entry_t table;
 mach_port_index_t next_free = 0;
 uint32_t i;

 assert(is_active(space));

 table = &space->is_table[0];

 for (i = 0; i < entries_needed; i++) {
  next_free = table[next_free].ie_next;
  if (next_free == 0) {
   return KERN_NO_SPACE;
  }
  assert(next_free < space->is_table_size);
  assert(table[next_free].ie_object == IO_NULL);
 }
 return KERN_SUCCESS;
}
