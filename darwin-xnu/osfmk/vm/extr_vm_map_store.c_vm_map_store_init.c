
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_map_header {int dummy; } ;


 scalar_t__ vm_map_store_has_RB_support (struct vm_map_header*) ;
 int vm_map_store_init_ll (struct vm_map_header*) ;
 int vm_map_store_init_rb (struct vm_map_header*) ;

void
vm_map_store_init( struct vm_map_header *hdr )
{
 vm_map_store_init_ll( hdr );





}
