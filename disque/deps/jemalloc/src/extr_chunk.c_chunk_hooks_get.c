
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int chunk_hooks_t ;
struct TYPE_4__ {int chunks_mtx; } ;
typedef TYPE_1__ arena_t ;


 int chunk_hooks_get_locked (TYPE_1__*) ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

chunk_hooks_t
chunk_hooks_get(arena_t *arena)
{
 chunk_hooks_t chunk_hooks;

 malloc_mutex_lock(&arena->chunks_mtx);
 chunk_hooks = chunk_hooks_get_locked(arena);
 malloc_mutex_unlock(&arena->chunks_mtx);

 return (chunk_hooks);
}
