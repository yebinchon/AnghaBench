
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;
typedef int arena_t ;


 void* huge_ralloc_move_helper (int *,int *,size_t,size_t,int,int *) ;
 int huge_ralloc_no_move (void*,size_t,size_t,size_t,int) ;
 int isqalloc (int *,void*,size_t,int *) ;
 int memcpy (void*,void*,size_t) ;

void *
huge_ralloc(tsd_t *tsd, arena_t *arena, void *ptr, size_t oldsize, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache)
{
 void *ret;
 size_t copysize;


 if (!huge_ralloc_no_move(ptr, oldsize, usize, usize, zero))
  return (ptr);






 ret = huge_ralloc_move_helper(tsd, arena, usize, alignment, zero,
     tcache);
 if (ret == ((void*)0))
  return (((void*)0));

 copysize = (usize < oldsize) ? usize : oldsize;
 memcpy(ret, ptr, copysize);
 isqalloc(tsd, ptr, oldsize, tcache);
 return (ret);
}
