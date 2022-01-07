
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int chunk_hooks_t ;
struct TYPE_3__ {int chunk_hooks; } ;
typedef TYPE_1__ arena_t ;



__attribute__((used)) static chunk_hooks_t
chunk_hooks_get_locked(arena_t *arena)
{

 return (arena->chunk_hooks);
}
