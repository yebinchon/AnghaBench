
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chunk_arena_get (unsigned int) ;
 int chunk_purge_arena (int ,void*,size_t,size_t) ;

__attribute__((used)) static bool
chunk_purge_default(void *chunk, size_t size, size_t offset, size_t length,
    unsigned arena_ind)
{

 return (chunk_purge_arena(chunk_arena_get(arena_ind), chunk, offset,
     length));
}
