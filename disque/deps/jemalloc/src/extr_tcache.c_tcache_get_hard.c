
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;
typedef int arena_t ;


 int * arena_choose (int *,int *) ;
 int * tcache_create (int *,int *) ;
 int tcache_enabled_get () ;
 int tcache_enabled_set (int) ;
 scalar_t__ tsd_nominal (int *) ;
 scalar_t__ unlikely (int ) ;

tcache_t *
tcache_get_hard(tsd_t *tsd)
{
 arena_t *arena;

 if (!tcache_enabled_get()) {
  if (tsd_nominal(tsd))
   tcache_enabled_set(0);
  return (((void*)0));
 }
 arena = arena_choose(tsd, ((void*)0));
 if (unlikely(arena == ((void*)0)))
  return (((void*)0));
 return (tcache_create(tsd, arena));
}
