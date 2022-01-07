
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_2__* vm_shared_region_t ;
typedef int vm_offset_t ;
typedef TYPE_3__* vm_named_entry_t ;
typedef TYPE_4__* vm_map_t ;
struct TYPE_16__ {scalar_t__ ip_kobject; } ;
struct TYPE_15__ {int slide_object; scalar_t__ slide_info_size; scalar_t__ slide_info_entry; } ;
struct TYPE_14__ {scalar_t__ pmap; } ;
struct TYPE_11__ {TYPE_4__* map; } ;
struct TYPE_13__ {int is_sub_map; TYPE_1__ backing; int is_copy; int internal; } ;
struct TYPE_12__ {scalar_t__ sr_ref_count; TYPE_6__ sr_slide_info; scalar_t__ sr_timer_call; TYPE_7__* sr_mem_entry; scalar_t__ sr_size; scalar_t__ sr_base_address; int sr_slid; int sr_persists; int sr_64bit; int sr_cpu_subtype; int sr_cpu_type; struct TYPE_12__* sr_root_dir; } ;


 TYPE_7__* IPC_PORT_NULL ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 int SHARED_REGION_TRACE_INFO (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_2__*) ;
 int assert (int) ;
 int kernel_map ;
 int kfree (TYPE_2__*,int) ;
 int kmem_free (int ,int ,int ) ;
 int mach_memory_entry_port_release (TYPE_7__*) ;
 int pmap_remove (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_6__* si ;
 int thread_call_free (scalar_t__) ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static void
vm_shared_region_destroy(
 vm_shared_region_t shared_region)
{
 vm_named_entry_t mem_entry;
 vm_map_t map;

 SHARED_REGION_TRACE_INFO(
  ("shared_region: -> destroy(%p) (root=%p,cpu=<%d,%d>,64bit=%d)\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region),
   (void *)VM_KERNEL_ADDRPERM(shared_region->sr_root_dir),
   shared_region->sr_cpu_type,
   shared_region->sr_cpu_subtype,
   shared_region->sr_64bit));

 assert(shared_region->sr_ref_count == 0);
 assert(!shared_region->sr_persists);
 assert(!shared_region->sr_slid);

 mem_entry = (vm_named_entry_t) shared_region->sr_mem_entry->ip_kobject;
 assert(mem_entry->is_sub_map);
 assert(!mem_entry->internal);
 assert(!mem_entry->is_copy);
 map = mem_entry->backing.map;
 if (map->pmap) {
  pmap_remove(map->pmap,
       shared_region->sr_base_address,
       (shared_region->sr_base_address +
        shared_region->sr_size));
 }
 mach_memory_entry_port_release(shared_region->sr_mem_entry);
 mem_entry = ((void*)0);
 shared_region->sr_mem_entry = IPC_PORT_NULL;

 if (shared_region->sr_timer_call) {
  thread_call_free(shared_region->sr_timer_call);
 }
 kfree(shared_region, sizeof (*shared_region));

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: destroy(%p) <-\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region)));
 shared_region = ((void*)0);

}
