
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHUNK_CEILING (size_t) ;
 int assert (int) ;
 size_t chunksize ;
 scalar_t__ huge_ralloc_no_move_expand (void*,size_t,size_t,int) ;
 int huge_ralloc_no_move_shrink (void*,size_t,size_t) ;
 int huge_ralloc_no_move_similar (void*,size_t,size_t,size_t,int) ;
 size_t s2u (size_t) ;

bool
huge_ralloc_no_move(void *ptr, size_t oldsize, size_t usize_min,
    size_t usize_max, bool zero)
{

 assert(s2u(oldsize) == oldsize);


 if (oldsize < chunksize || usize_max < chunksize)
  return (1);

 if (CHUNK_CEILING(usize_max) > CHUNK_CEILING(oldsize)) {

  if (!huge_ralloc_no_move_expand(ptr, oldsize, usize_max, zero))
   return (0);

  if (usize_min < usize_max && CHUNK_CEILING(usize_min) >
      CHUNK_CEILING(oldsize) && huge_ralloc_no_move_expand(ptr,
      oldsize, usize_min, zero))
   return (0);
 }





 if (CHUNK_CEILING(oldsize) >= CHUNK_CEILING(usize_min)
     && CHUNK_CEILING(oldsize) <= CHUNK_CEILING(usize_max)) {
  huge_ralloc_no_move_similar(ptr, oldsize, usize_min, usize_max,
      zero);
  return (0);
 }


 if (CHUNK_CEILING(oldsize) > CHUNK_CEILING(usize_max))
  return (huge_ralloc_no_move_shrink(ptr, oldsize, usize_max));
 return (1);
}
