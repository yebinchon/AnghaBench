
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
struct vm_map_store {int dummy; } ;
struct TYPE_3__ {scalar_t__ vme_start; scalar_t__ vme_end; } ;


 TYPE_1__* VME_FOR_STORE (struct vm_map_store*) ;

int rb_node_compare(struct vm_map_store *node, struct vm_map_store *parent)
{
 vm_map_entry_t vme_c;
 vm_map_entry_t vme_p;

 vme_c = VME_FOR_STORE(node);
 vme_p = VME_FOR_STORE(parent);
 if (vme_c->vme_start < vme_p->vme_start)
  return -1;
 if (vme_c->vme_start >= vme_p->vme_end)
  return 1;
 return 0;
}
