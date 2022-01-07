
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* vnode_t ;
typedef scalar_t__ vm_object_offset_t ;
struct cl_extent {void* e_addr; void* b_addr; } ;
typedef void* daddr64_t ;
typedef int boolean_t ;
struct TYPE_7__ {TYPE_1__* vu_ubcinfo; } ;
struct TYPE_8__ {TYPE_2__ v_un; } ;
struct TYPE_6__ {int ui_size; } ;


 scalar_t__ PAGE_MASK_64 ;
 scalar_t__ PAGE_SIZE_64 ;
 int TRUE ;
 int assert (int) ;
 int cluster_update_state_internal (TYPE_3__*,struct cl_extent*,int ,int ,int *,scalar_t__,int,int ,int *,int *,int ) ;

void
cluster_update_state(vnode_t vp, vm_object_offset_t s_offset, vm_object_offset_t e_offset, boolean_t vm_initiated)
{
 struct cl_extent cl;
 boolean_t first_pass = TRUE;

 assert(s_offset < e_offset);
 assert((s_offset & PAGE_MASK_64) == 0);
 assert((e_offset & PAGE_MASK_64) == 0);

 cl.b_addr = (daddr64_t)(s_offset / PAGE_SIZE_64);
 cl.e_addr = (daddr64_t)(e_offset / PAGE_SIZE_64);

 cluster_update_state_internal(vp, &cl, 0, TRUE, &first_pass, s_offset, (int)(e_offset - s_offset),
          vp->v_un.vu_ubcinfo->ui_size, ((void*)0), ((void*)0), vm_initiated);
}
