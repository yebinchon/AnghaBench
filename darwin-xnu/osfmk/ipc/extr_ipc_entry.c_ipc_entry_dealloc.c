
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef size_t mach_port_index_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef size_t ipc_entry_num_t ;
struct TYPE_9__ {scalar_t__ ie_object; scalar_t__ ie_request; int ie_bits; size_t ie_next; } ;
struct TYPE_8__ {size_t is_table_size; int is_table_free; TYPE_2__* is_table; } ;


 scalar_t__ IE_BITS_GEN (int) ;
 int IE_BITS_GEN_MASK ;
 int IE_BITS_ROLL_MASK ;
 scalar_t__ IE_REQ_NONE ;
 scalar_t__ IO_NULL ;
 scalar_t__ MACH_PORT_GEN (int ) ;
 size_t MACH_PORT_INDEX (int ) ;
 int assert (int) ;
 int ipc_entry_modified (TYPE_1__*,int ,TYPE_2__*) ;
 int is_active (TYPE_1__*) ;
 int panic (char*) ;

void
ipc_entry_dealloc(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry)
{
 ipc_entry_t table;
 ipc_entry_num_t size;
 mach_port_index_t index;

 assert(is_active(space));
 assert(entry->ie_object == IO_NULL);
 assert(entry->ie_request == IE_REQ_NONE);


 if (entry->ie_request != IE_REQ_NONE)
  panic("ipc_entry_dealloc()\n");


 index = MACH_PORT_INDEX(name);
 table = space->is_table;
 size = space->is_table_size;

 if ((index < size) && (entry == &table[index])) {
  assert(IE_BITS_GEN(entry->ie_bits) == MACH_PORT_GEN(name));
  entry->ie_bits &= (IE_BITS_GEN_MASK | IE_BITS_ROLL_MASK);
  entry->ie_next = table->ie_next;
  table->ie_next = index;
  space->is_table_free++;
 } else {




                assert(index < size);
  assert(entry == &table[index]);
  assert(IE_BITS_GEN(entry->ie_bits) == MACH_PORT_GEN(name));
 }
 ipc_entry_modified(space, name, entry);
}
