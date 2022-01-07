
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ dss_prec_t ;
typedef int chunk_hooks_t ;
struct TYPE_5__ {int chunks_ad_retained; int chunks_szad_retained; } ;
typedef TYPE_1__ arena_t ;


 int CHUNK_HOOKS_INITIALIZER ;
 int assert (int) ;
 void* chunk_alloc_dss (TYPE_1__*,void*,size_t,size_t,int*,int*) ;
 void* chunk_alloc_mmap (size_t,size_t,int*,int*) ;
 void* chunk_recycle (TYPE_1__*,int *,int *,int *,int,void*,size_t,size_t,int*,int*,int) ;
 size_t chunksize_mask ;
 scalar_t__ dss_prec_primary ;
 scalar_t__ dss_prec_secondary ;
 scalar_t__ have_dss ;

__attribute__((used)) static void *
chunk_alloc_core(arena_t *arena, void *new_addr, size_t size, size_t alignment,
    bool *zero, bool *commit, dss_prec_t dss_prec)
{
 void *ret;
 chunk_hooks_t chunk_hooks = CHUNK_HOOKS_INITIALIZER;

 assert(size != 0);
 assert((size & chunksize_mask) == 0);
 assert(alignment != 0);
 assert((alignment & chunksize_mask) == 0);


 if ((ret = chunk_recycle(arena, &chunk_hooks,
     &arena->chunks_szad_retained, &arena->chunks_ad_retained, 0,
     new_addr, size, alignment, zero, commit, 1)) != ((void*)0))
  return (ret);


 if (have_dss && dss_prec == dss_prec_primary && (ret =
     chunk_alloc_dss(arena, new_addr, size, alignment, zero, commit)) !=
     ((void*)0))
  return (ret);




 if (new_addr == ((void*)0) && (ret = chunk_alloc_mmap(size, alignment, zero,
     commit)) != ((void*)0))
  return (ret);

 if (have_dss && dss_prec == dss_prec_secondary && (ret =
     chunk_alloc_dss(arena, new_addr, size, alignment, zero, commit)) !=
     ((void*)0))
  return (ret);


 return (((void*)0));
}
