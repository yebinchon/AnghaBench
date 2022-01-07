
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int * vm_map_t ;
typedef TYPE_1__* vector_upl_t ;
typedef TYPE_2__* upl_t ;
struct TYPE_6__ {TYPE_1__* vector_upl; } ;
struct TYPE_5__ {int submap_dst_addr; int * submap; } ;


 int panic (char*) ;
 scalar_t__ vector_upl_is_valid (TYPE_2__*) ;

void
vector_upl_get_submap(upl_t upl, vm_map_t *v_upl_submap, vm_offset_t *submap_dst_addr)
{
 *v_upl_submap = ((void*)0);

 if(vector_upl_is_valid(upl)) {
  vector_upl_t vector_upl = upl->vector_upl;
  if(vector_upl) {
   *v_upl_submap = vector_upl->submap;
   *submap_dst_addr = vector_upl->submap_dst_addr;
  }
  else
   panic("vector_upl_get_submap was passed a non-vectored UPL\n");
 }
 else
  panic("vector_upl_get_submap was passed a null UPL\n");
}
