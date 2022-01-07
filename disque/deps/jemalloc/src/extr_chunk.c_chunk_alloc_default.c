
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dss_prec; } ;
typedef TYPE_1__ arena_t ;


 int JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED (void*,size_t) ;
 void* chunk_alloc_core (TYPE_1__*,void*,size_t,size_t,int*,int*,int ) ;
 TYPE_1__* chunk_arena_get (unsigned int) ;
 scalar_t__ config_valgrind ;

__attribute__((used)) static void *
chunk_alloc_default(void *new_addr, size_t size, size_t alignment, bool *zero,
    bool *commit, unsigned arena_ind)
{
 void *ret;
 arena_t *arena;

 arena = chunk_arena_get(arena_ind);
 ret = chunk_alloc_core(arena, new_addr, size, alignment, zero,
     commit, arena->dss_prec);
 if (ret == ((void*)0))
  return (((void*)0));
 if (config_valgrind)
  JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(ret, size);

 return (ret);
}
