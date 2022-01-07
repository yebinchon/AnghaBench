
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef size_t mach_port_index_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_1__* ipc_entry_t ;
typedef size_t ipc_entry_num_t ;
typedef int boolean_t ;
struct TYPE_4__ {size_t ie_index; scalar_t__ ie_object; int ie_bits; } ;


 int FALSE ;
 int IE_BITS_GEN (int ) ;
 size_t IH_TABLE_HASH (scalar_t__,size_t) ;
 scalar_t__ IO_NULL ;
 int MACH_PORT_MAKE (size_t,int ) ;
 int TRUE ;
 int assert (int) ;

boolean_t
ipc_hash_table_lookup(
 ipc_entry_t table,
 ipc_entry_num_t size,
 ipc_object_t obj,
 mach_port_name_t *namep,
 ipc_entry_t *entryp)
{
 mach_port_index_t hindex, index;

 if (obj == IO_NULL) {
  return FALSE;
 }

 hindex = IH_TABLE_HASH(obj, size);
 while ((index = table[hindex].ie_index) != 0) {
  ipc_entry_t entry;

  assert(index < size);
  entry = &table[index];
  if (entry->ie_object == obj) {
   *entryp = entry;
   *namep = MACH_PORT_MAKE(index,
      IE_BITS_GEN(entry->ie_bits));
   return TRUE;
  }

  if (++hindex == size)
   hindex = 0;
 }

 return FALSE;
}
