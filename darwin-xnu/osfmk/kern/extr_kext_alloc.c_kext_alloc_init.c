
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef unsigned long long mach_vm_offset_t ;
struct TYPE_8__ {scalar_t__ vmaddr; scalar_t__ vmsize; } ;
typedef TYPE_1__ kernel_segment_command_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_9__ {scalar_t__ min_offset; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KEXT_ALLOC_BASE (unsigned long long) ;
 scalar_t__ KEXT_ALLOC_SIZE (scalar_t__) ;
 char* SEG_TEXT ;
 int TRUE ;
 int VM_FLAGS_FIXED ;
 int VM_FLAGS_OVERWRITE ;
 int VM_KERNEL_UNSLIDE (scalar_t__) ;
 int VM_KERN_MEMORY_KEXT ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_MAP_PAGE_MASK (TYPE_2__*) ;
 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 TYPE_2__* g_kext_map ;
 TYPE_1__* getsegbyname (char*) ;
 TYPE_2__* kernel_map ;
 scalar_t__ kext_alloc_base ;
 scalar_t__ kext_alloc_max ;
 void* kext_post_boot_base ;
 scalar_t__ kmem_suballoc (TYPE_2__*,int *,scalar_t__,int ,int,int ,int ,TYPE_2__**) ;
 int panic (char*,...) ;
 int printf (char*,int ,int ,int ,int ) ;
 void* vm_map_round_page (scalar_t__,int ) ;
 unsigned long long vm_map_trunc_page (scalar_t__,int ) ;

void
kext_alloc_init(void)
{
    g_kext_map = kernel_map;
    kext_alloc_base = VM_MIN_KERNEL_ADDRESS;
    kext_alloc_max = VM_MAX_KERNEL_ADDRESS;

}
