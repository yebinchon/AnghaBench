
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef size_t mach_port_index_t ;
typedef int mach_port_gen_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_7__ {size_t ie_next; int ie_request; int ie_bits; } ;
struct TYPE_6__ {scalar_t__ is_table_size; int is_table_free; TYPE_2__* is_table; } ;


 int IE_REQ_NONE ;
 int KERN_SUCCESS ;
 int MACH_PORT_MAKE (size_t,int ) ;
 int MACH_PORT_VALID (int ) ;
 scalar_t__ __improbable (int ) ;
 int assert (int) ;
 int ipc_entry_gen_rolled (int ,int ) ;
 int ipc_entry_new_gen (int ) ;
 int ipc_entry_new_rollpoint (int ) ;
 int ipc_space_get_rollpoint (TYPE_1__*) ;

kern_return_t
ipc_entry_claim(
 ipc_space_t space,
 mach_port_name_t *namep,
 ipc_entry_t *entryp)
{
 ipc_entry_t entry;
 ipc_entry_t table;
 mach_port_index_t first_free;
 mach_port_gen_t gen;
 mach_port_name_t new_name;

 table = &space->is_table[0];

 first_free = table->ie_next;
 assert(first_free != 0);

 entry = &table[first_free];
 table->ie_next = entry->ie_next;
 space->is_table_free--;

 assert(table->ie_next < space->is_table_size);





 gen = ipc_entry_new_gen(entry->ie_bits);
 if (__improbable(ipc_entry_gen_rolled(entry->ie_bits, gen))) {
  ipc_entry_bits_t roll = ipc_space_get_rollpoint(space);
  gen = ipc_entry_new_rollpoint(roll);
 }
 entry->ie_bits = gen;
 entry->ie_request = IE_REQ_NONE;







 new_name = MACH_PORT_MAKE(first_free, gen);
 assert(MACH_PORT_VALID(new_name));
 *namep = new_name;
 *entryp = entry;

 return KERN_SUCCESS;
}
