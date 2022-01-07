
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* arena_alloc (int *,size_t) ;
 int assert (int) ;
 int ast_arena ;
 size_t ast_memory_usage ;
 int memset (void*,int ,size_t) ;

void *ast_alloc(size_t size) {
    assert(size != 0);
    void *ptr = arena_alloc(&ast_arena, size);
    memset(ptr, 0, size);
    ast_memory_usage += size;
    return ptr;
}
