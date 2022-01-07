
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; int blocks; scalar_t__ end; } ;
typedef TYPE_1__ Arena ;


 int ALIGN_DOWN_PTR (int ,int ) ;
 size_t ALIGN_UP (int ,int ) ;
 int ARENA_ALIGNMENT ;
 int ARENA_BLOCK_SIZE ;
 int CLAMP_MIN (size_t,int ) ;
 int assert (int) ;
 int buf_push (int ,int ) ;
 int xmalloc (size_t) ;

void arena_grow(Arena *arena, size_t min_size) {
    size_t size = ALIGN_UP(CLAMP_MIN(min_size, ARENA_BLOCK_SIZE), ARENA_ALIGNMENT);
    arena->ptr = xmalloc(size);
    assert(arena->ptr == ALIGN_DOWN_PTR(arena->ptr, ARENA_ALIGNMENT));
    arena->end = arena->ptr + size;
    buf_push(arena->blocks, arena->ptr);
}
