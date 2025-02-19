
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
struct TYPE_4__ {int elem_size; int cur_size; int count; int tags; } ;


 int FALSE ;
 int MAX_ENTROPY_PER_ZCRAM ;
 int ZONE_CHUNK_MAXELEMENTS ;
 scalar_t__ __improbable (int ) ;
 int assert (int) ;
 int free_to_zone (TYPE_1__*,int,int ) ;
 scalar_t__ leak_scan_debug_flag ;
 scalar_t__ random_bool_gen_bits (int *,unsigned int*,int ,int) ;
 int zone_bool_gen ;

__attribute__((used)) static void
random_free_to_zone(
   zone_t zone,
   vm_offset_t newmem,
   vm_offset_t first_element_offset,
   int element_count,
   unsigned int *entropy_buffer)
{
 vm_offset_t last_element_offset;
 vm_offset_t element_addr;
 vm_size_t elem_size;
 int index;

 assert(element_count && element_count <= ZONE_CHUNK_MAXELEMENTS);
 elem_size = zone->elem_size;
 last_element_offset = first_element_offset + ((element_count * elem_size) - elem_size);
 for (index = 0; index < element_count; index++) {
  assert(first_element_offset <= last_element_offset);
  if (



         random_bool_gen_bits(&zone_bool_gen, entropy_buffer, MAX_ENTROPY_PER_ZCRAM, 1)) {
   element_addr = newmem + first_element_offset;
   first_element_offset += elem_size;
  } else {
   element_addr = newmem + last_element_offset;
   last_element_offset -= elem_size;
  }
  if (element_addr != (vm_offset_t)zone) {
   zone->count++;
   free_to_zone(zone, element_addr, FALSE);
  }
  zone->cur_size += elem_size;
 }
}
