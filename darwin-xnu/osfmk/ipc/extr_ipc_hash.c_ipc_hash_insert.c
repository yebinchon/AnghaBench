
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_port_index_t ;
typedef TYPE_1__* ipc_space_t ;
typedef int ipc_object_t ;
typedef int ipc_entry_t ;
struct TYPE_3__ {int is_table_size; int is_table; } ;


 int MACH_PORT_INDEX (int ) ;
 int ipc_hash_table_insert (int ,int ,int ,int ,int ) ;

void
ipc_hash_insert(
 ipc_space_t space,
 ipc_object_t obj,
 mach_port_name_t name,
 ipc_entry_t entry)
{
 mach_port_index_t index;

 index = MACH_PORT_INDEX(name);
 ipc_hash_table_insert(space->is_table, space->is_table_size, obj, index, entry);
}
