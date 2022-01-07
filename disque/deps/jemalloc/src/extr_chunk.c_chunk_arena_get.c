
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena_t ;


 int * a0get () ;
 int * arena_get (int ,unsigned int,int,int) ;
 int assert (int ) ;
 int tsd_fetch () ;

__attribute__((used)) static arena_t *
chunk_arena_get(unsigned arena_ind)
{
 arena_t *arena;


 arena = (arena_ind == 0) ? a0get() : arena_get(tsd_fetch(), arena_ind,
      0, 1);




 assert(arena != ((void*)0));
 return (arena);
}
