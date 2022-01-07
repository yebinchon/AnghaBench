
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ user_wired_count; scalar_t__ vme_end; scalar_t__ vme_start; scalar_t__ wired_count; } ;
struct TYPE_5__ {scalar_t__ user_wire_size; int user_wire_limit; } ;


 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 scalar_t__ MAX_WIRE_COUNT ;
 scalar_t__ MIN (int ,int ) ;
 scalar_t__ max_mem ;
 int panic (char*) ;
 scalar_t__ ptoa_64 (unsigned int) ;
 scalar_t__ vm_global_no_user_wire_amount ;
 scalar_t__ vm_global_user_wire_limit ;
 unsigned int vm_lopage_free_count ;
 unsigned int vm_page_wire_count ;
 int vm_user_wire_limit ;

__attribute__((used)) static kern_return_t
add_wire_counts(
 vm_map_t map,
 vm_map_entry_t entry,
 boolean_t user_wire)
{
 vm_map_size_t size;

 if (user_wire) {
  unsigned int total_wire_count = vm_page_wire_count + vm_lopage_free_count;






  if (entry->user_wired_count == 0) {
   size = entry->vme_end - entry->vme_start;
   if(size + map->user_wire_size > MIN(map->user_wire_limit, vm_user_wire_limit) ||
      size + ptoa_64(total_wire_count) > vm_global_user_wire_limit ||
          size + ptoa_64(total_wire_count) > max_mem - vm_global_no_user_wire_amount)
    return KERN_RESOURCE_SHORTAGE;






   if (entry->wired_count >= MAX_WIRE_COUNT)
    return KERN_FAILURE;

   entry->wired_count++;
   map->user_wire_size += size;
  }

  if (entry->user_wired_count >= MAX_WIRE_COUNT)
   return KERN_FAILURE;

  entry->user_wired_count++;

 } else {





  if (entry->wired_count >= MAX_WIRE_COUNT)
   panic("vm_map_wire: too many wirings");

  entry->wired_count++;
 }

 return KERN_SUCCESS;
}
