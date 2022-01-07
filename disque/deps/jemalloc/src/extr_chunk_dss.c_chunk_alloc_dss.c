
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chunk_hooks_t ;
typedef int arena_t ;


 scalar_t__ ALIGNMENT_CEILING (uintptr_t,size_t) ;
 size_t CHUNK_ADDR2OFFSET (void*) ;
 int CHUNK_HOOKS_INITIALIZER ;
 int JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED (void*,size_t) ;
 int assert (int) ;
 int cassert (int ) ;
 int chunk_dalloc_wrapper (int *,int *,void*,size_t,int) ;
 void* chunk_dss_sbrk (intptr_t) ;
 size_t chunksize ;
 size_t chunksize_mask ;
 void* dss_max ;
 int dss_mtx ;
 void* dss_prev ;
 int have_dss ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int memset (void*,int ,size_t) ;
 int pages_decommit (void*,size_t) ;

void *
chunk_alloc_dss(arena_t *arena, void *new_addr, size_t size, size_t alignment,
    bool *zero, bool *commit)
{
 cassert(have_dss);
 assert(size > 0 && (size & chunksize_mask) == 0);
 assert(alignment > 0 && (alignment & chunksize_mask) == 0);





 if ((intptr_t)size < 0)
  return (((void*)0));

 malloc_mutex_lock(&dss_mtx);
 if (dss_prev != (void *)-1) {






  do {
   void *ret, *cpad, *dss_next;
   size_t gap_size, cpad_size;
   intptr_t incr;

   if (new_addr != ((void*)0) && dss_max != new_addr)
    break;


   dss_max = chunk_dss_sbrk(0);


   if (new_addr != ((void*)0) && dss_max != new_addr)
    break;





   gap_size = (chunksize - CHUNK_ADDR2OFFSET(dss_max)) &
       chunksize_mask;





   cpad = (void *)((uintptr_t)dss_max + gap_size);
   ret = (void *)ALIGNMENT_CEILING((uintptr_t)dss_max,
       alignment);
   cpad_size = (uintptr_t)ret - (uintptr_t)cpad;
   dss_next = (void *)((uintptr_t)ret + size);
   if ((uintptr_t)ret < (uintptr_t)dss_max ||
       (uintptr_t)dss_next < (uintptr_t)dss_max) {

    malloc_mutex_unlock(&dss_mtx);
    return (((void*)0));
   }
   incr = gap_size + cpad_size + size;
   dss_prev = chunk_dss_sbrk(incr);
   if (dss_prev == dss_max) {

    dss_max = dss_next;
    malloc_mutex_unlock(&dss_mtx);
    if (cpad_size != 0) {
     chunk_hooks_t chunk_hooks =
         CHUNK_HOOKS_INITIALIZER;
     chunk_dalloc_wrapper(arena,
         &chunk_hooks, cpad, cpad_size,
         1);
    }
    if (*zero) {
     JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(
         ret, size);
     memset(ret, 0, size);
    }
    if (!*commit)
     *commit = pages_decommit(ret, size);
    return (ret);
   }
  } while (dss_prev != (void *)-1);
 }
 malloc_mutex_unlock(&dss_mtx);

 return (((void*)0));
}
