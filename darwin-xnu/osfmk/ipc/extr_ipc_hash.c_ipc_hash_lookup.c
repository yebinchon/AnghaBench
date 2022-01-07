
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef TYPE_1__* ipc_space_t ;
typedef int ipc_object_t ;
typedef int ipc_entry_t ;
typedef int boolean_t ;
struct TYPE_3__ {int is_table_size; int is_table; } ;


 int ipc_hash_table_lookup (int ,int ,int ,int *,int *) ;

boolean_t
ipc_hash_lookup(
 ipc_space_t space,
 ipc_object_t obj,
 mach_port_name_t *namep,
 ipc_entry_t *entryp)
{
 return ipc_hash_table_lookup(space->is_table, space->is_table_size, obj, namep, entryp);
}
