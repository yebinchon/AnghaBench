
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_map_header {int rb_head_store; } ;


 int RB_INIT (int *) ;

void
vm_map_store_init_rb( struct vm_map_header* hdr )
{
 RB_INIT(&(hdr->rb_head_store));
}
