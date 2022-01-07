
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_3__ {scalar_t__ prof_accumbytes; } ;
typedef TYPE_1__ tcache_t ;
typedef int tcache_bin_t ;
typedef int szind_t ;
typedef int arena_t ;


 int arena_tcache_fill_small (int *,int *,int ,scalar_t__) ;
 scalar_t__ config_prof ;
 void* tcache_alloc_easy (int *) ;

void *
tcache_alloc_small_hard(tsd_t *tsd, arena_t *arena, tcache_t *tcache,
    tcache_bin_t *tbin, szind_t binind)
{
 void *ret;

 arena_tcache_fill_small(arena, tbin, binind, config_prof ?
     tcache->prof_accumbytes : 0);
 if (config_prof)
  tcache->prof_accumbytes = 0;
 ret = tcache_alloc_easy(tbin);

 return (ret);
}
