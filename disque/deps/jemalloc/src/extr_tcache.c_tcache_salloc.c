
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t arena_salloc (void const*,int) ;

size_t tcache_salloc(const void *ptr)
{

 return (arena_salloc(ptr, 0));
}
