
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena_t ;


 void* CHUNK_ADDR2BASE (void*) ;
 size_t PAGE_MASK ;
 int assert (int) ;
 int pages_purge (void*,size_t) ;

bool
chunk_purge_arena(arena_t *arena, void *chunk, size_t offset, size_t length)
{

 assert(chunk != ((void*)0));
 assert(CHUNK_ADDR2BASE(chunk) == chunk);
 assert((offset & PAGE_MASK) == 0);
 assert(length != 0);
 assert((length & PAGE_MASK) == 0);

 return (pages_purge((void *)((uintptr_t)chunk + (uintptr_t)offset),
     length));
}
