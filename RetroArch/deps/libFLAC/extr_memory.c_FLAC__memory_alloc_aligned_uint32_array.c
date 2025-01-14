
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__uint32 ;
typedef int FLAC__bool ;


 int FLAC__ASSERT (int) ;
 scalar_t__ FLAC__memory_alloc_aligned (int,void**) ;
 int SIZE_MAX ;
 int free (int *) ;

FLAC__bool FLAC__memory_alloc_aligned_uint32_array(size_t elements, FLAC__uint32 **unaligned_pointer, FLAC__uint32 **aligned_pointer)
{
 FLAC__uint32 *pu;
 union {
  FLAC__uint32 *pa;
  void *pv;
 } u;

 FLAC__ASSERT(elements > 0);
 FLAC__ASSERT(0 != unaligned_pointer);
 FLAC__ASSERT(0 != aligned_pointer);
 FLAC__ASSERT(unaligned_pointer != aligned_pointer);

 if(elements > SIZE_MAX / sizeof(*pu))
  return 0;

 pu = (FLAC__uint32*)FLAC__memory_alloc_aligned(sizeof(*pu) * elements, &u.pv);
 if(0 == pu) {
  return 0;
 }
 else {
  if(*unaligned_pointer != 0)
   free(*unaligned_pointer);
  *unaligned_pointer = pu;
  *aligned_pointer = u.pa;
  return 1;
 }
}
