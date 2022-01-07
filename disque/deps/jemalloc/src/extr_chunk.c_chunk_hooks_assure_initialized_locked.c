
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chunk_hooks_t ;
typedef int arena_t ;


 int chunk_hooks_assure_initialized_impl (int *,int *,int) ;

__attribute__((used)) static void
chunk_hooks_assure_initialized_locked(arena_t *arena,
    chunk_hooks_t *chunk_hooks)
{

 chunk_hooks_assure_initialized_impl(arena, chunk_hooks, 1);
}
