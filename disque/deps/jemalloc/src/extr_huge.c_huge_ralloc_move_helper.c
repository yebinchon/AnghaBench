
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;
typedef int arena_t ;


 size_t chunksize ;
 void* huge_malloc (int *,int *,size_t,int,int *) ;
 void* huge_palloc (int *,int *,size_t,size_t,int,int *) ;

__attribute__((used)) static void *
huge_ralloc_move_helper(tsd_t *tsd, arena_t *arena, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache)
{

 if (alignment <= chunksize)
  return (huge_malloc(tsd, arena, usize, zero, tcache));
 return (huge_palloc(tsd, arena, usize, alignment, zero, tcache));
}
