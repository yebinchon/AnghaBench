
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_entry_t ;
struct vm_map_header {int dummy; } ;


 int _vm_map_entry_link_ll (struct vm_map_header*,int ,int ) ;

void
vm_map_store_entry_link_ll( struct vm_map_header *mapHdr, vm_map_entry_t after_where, vm_map_entry_t entry)
{
 _vm_map_entry_link_ll( mapHdr, after_where, entry);
}
