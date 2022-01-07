
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef size_t mach_port_index_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
struct TYPE_8__ {int ie_bits; } ;
struct TYPE_7__ {size_t is_table_size; TYPE_2__* is_table; } ;


 scalar_t__ IE_BITS_GEN (int ) ;
 scalar_t__ IE_BITS_TYPE (int ) ;
 TYPE_2__* IE_NULL ;
 scalar_t__ MACH_PORT_GEN (int ) ;
 size_t MACH_PORT_INDEX (int ) ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int assert (int) ;
 int is_active (TYPE_1__*) ;

ipc_entry_t
ipc_entry_lookup(
 ipc_space_t space,
 mach_port_name_t name)
{
 mach_port_index_t index;
 ipc_entry_t entry;

 assert(is_active(space));

 index = MACH_PORT_INDEX(name);
 if (index < space->is_table_size) {
                entry = &space->is_table[index];
  if (IE_BITS_GEN(entry->ie_bits) != MACH_PORT_GEN(name) ||
      IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_NONE) {
   entry = IE_NULL;
  }
 }
 else {
  entry = IE_NULL;
 }

 assert((entry == IE_NULL) || IE_BITS_TYPE(entry->ie_bits));
 return entry;
}
