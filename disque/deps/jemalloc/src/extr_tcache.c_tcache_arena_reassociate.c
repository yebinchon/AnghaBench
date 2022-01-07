
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcache_t ;
typedef int arena_t ;


 int tcache_arena_associate (int *,int *) ;
 int tcache_arena_dissociate (int *,int *) ;

void
tcache_arena_reassociate(tcache_t *tcache, arena_t *oldarena, arena_t *newarena)
{

 tcache_arena_dissociate(tcache, oldarena);
 tcache_arena_associate(tcache, newarena);
}
