
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* arena_alloc (int *,size_t) ;
 int ast_arena ;
 int memcpy (void*,void const*,size_t) ;

void *ast_dup(const void *src, size_t size) {
    if (size == 0) {
        return ((void*)0);
    }
    void *ptr = arena_alloc(&ast_arena, size);
    memcpy(ptr, src, size);
    return ptr;
}
