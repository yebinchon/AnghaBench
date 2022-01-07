
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* purge ) (void*,size_t,size_t,size_t,int ) ;} ;
typedef TYPE_1__ chunk_hooks_t ;
struct TYPE_8__ {int ind; } ;
typedef TYPE_2__ arena_t ;


 int chunk_hooks_assure_initialized (TYPE_2__*,TYPE_1__*) ;
 int stub1 (void*,size_t,size_t,size_t,int ) ;

bool
chunk_purge_wrapper(arena_t *arena, chunk_hooks_t *chunk_hooks, void *chunk,
    size_t size, size_t offset, size_t length)
{

 chunk_hooks_assure_initialized(arena, chunk_hooks);
 return (chunk_hooks->purge(chunk, size, offset, length, arena->ind));
}
