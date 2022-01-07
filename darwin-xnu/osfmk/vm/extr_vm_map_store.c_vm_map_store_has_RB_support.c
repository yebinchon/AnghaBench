
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rbh_root; } ;
struct vm_map_header {TYPE_1__ rb_head_store; } ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ SKIP_RB_TREE ;
 int TRUE ;

boolean_t
vm_map_store_has_RB_support( struct vm_map_header *hdr )
{
 if ((void*)hdr->rb_head_store.rbh_root == (void*)(int)SKIP_RB_TREE) {
  return FALSE;
 }
 return TRUE;
}
