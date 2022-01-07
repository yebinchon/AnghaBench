
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int ARM_MAX_ASID ;
 int MAX_ASID ;
 int NBBY ;
 int* asid_bitmap ;
 int assert (int) ;
 unsigned int ffs (int) ;
 int panic (char*) ;
 int pmap_simple_lock (int *) ;
 int pmap_simple_unlock (int *) ;
 int pmaps_lock ;

__attribute__((used)) static unsigned int
alloc_asid(
 void)
{
 unsigned int asid_bitmap_index;

 pmap_simple_lock(&pmaps_lock);
 for (asid_bitmap_index = 0; asid_bitmap_index < (MAX_ASID / (sizeof(uint32_t) * NBBY)); asid_bitmap_index++) {
  unsigned int temp = ffs(asid_bitmap[asid_bitmap_index]);
  if (temp > 0) {
   temp -= 1;
   asid_bitmap[asid_bitmap_index] &= ~(1 << temp);
   pmap_simple_unlock(&pmaps_lock);





   assert(((asid_bitmap_index * sizeof(uint32_t) * NBBY + temp) % ARM_MAX_ASID) != 0);






   return (asid_bitmap_index * sizeof(uint32_t) * NBBY + temp);
  }
 }
 pmap_simple_unlock(&pmaps_lock);




 panic("alloc_asid(): out of ASID number");
 return MAX_ASID;
}
