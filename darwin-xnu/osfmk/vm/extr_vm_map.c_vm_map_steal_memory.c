
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _vm_map {int dummy; } ;


 int PAGE_SIZE ;
 scalar_t__ gzalloc_enabled () ;
 void* kentry_data ;
 int kentry_data_size ;
 void* map_data ;
 int map_data_size ;
 void* map_holes_data ;
 int map_holes_data_size ;
 void* pmap_steal_memory (int) ;
 int round_page (int) ;

void
vm_map_steal_memory(
 void)
{
 uint32_t kentry_initial_pages;

 map_data_size = round_page(10 * sizeof(struct _vm_map));
 map_data = pmap_steal_memory(map_data_size);
 kentry_initial_pages = 10;
 kentry_data_size = kentry_initial_pages * PAGE_SIZE;
 kentry_data = pmap_steal_memory(kentry_data_size);

 map_holes_data_size = kentry_data_size;
 map_holes_data = pmap_steal_memory(map_holes_data_size);
}
