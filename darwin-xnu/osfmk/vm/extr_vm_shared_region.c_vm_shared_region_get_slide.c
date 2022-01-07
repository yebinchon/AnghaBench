
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_shared_region_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ slide; int * slide_object; } ;
struct TYPE_6__ {int sr_ref_count; TYPE_1__ sr_slide_info; } ;


 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_2__*) ;
 int assert (int) ;

uint32_t
vm_shared_region_get_slide(
 vm_shared_region_t shared_region)
{
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> vm_shared_region_get_slide(%p)\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region)));
 assert(shared_region->sr_ref_count > 1);
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: vm_shared_region_get_slide(%p) <- %u\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region),
   shared_region->sr_slide_info.slide));


 assert(shared_region->sr_slide_info.slide_object != ((void*)0) ||
   shared_region->sr_slide_info.slide == 0);

 return shared_region->sr_slide_info.slide;
}
