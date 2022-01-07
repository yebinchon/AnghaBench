
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;
typedef int arena_t ;


 int chunksize ;
 void* huge_palloc (int *,int *,size_t,int ,int,int *) ;
 size_t s2u (size_t) ;

void *
huge_malloc(tsd_t *tsd, arena_t *arena, size_t size, bool zero,
    tcache_t *tcache)
{
 size_t usize;

 usize = s2u(size);
 if (usize == 0) {

  return (((void*)0));
 }

 return (huge_palloc(tsd, arena, usize, chunksize, zero, tcache));
}
