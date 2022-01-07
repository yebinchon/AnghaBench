
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef scalar_t__ uint32_t ;
typedef int kern_return_t ;
struct TYPE_7__ {scalar_t__ slide; } ;
struct TYPE_6__ {scalar_t__ sr_slid; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int current_task () ;
 int printf (char*) ;
 int vm_shared_region_deallocate (TYPE_1__*) ;
 TYPE_1__* vm_shared_region_get (int ) ;
 TYPE_2__* vm_shared_region_get_slide_info (TYPE_1__*) ;

kern_return_t
vm_shared_region_sliding_valid(uint32_t slide)
{
 kern_return_t kr = KERN_SUCCESS;
 vm_shared_region_t sr = vm_shared_region_get(current_task());


 if (sr == ((void*)0)) {
  return kr;
 }

 if ((sr->sr_slid == TRUE) && slide) {
         if (slide != vm_shared_region_get_slide_info(sr)->slide) {
   printf("Only one shared region can be slid\n");
   kr = KERN_FAILURE;
  } else {
   kr = KERN_INVALID_ARGUMENT;
  }
 }
 vm_shared_region_deallocate(sr);
 return kr;
}
