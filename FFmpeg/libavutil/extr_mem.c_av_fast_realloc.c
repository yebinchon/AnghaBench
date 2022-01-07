
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMAX (size_t,size_t) ;
 size_t FFMIN (int,int ) ;
 void* av_realloc (void*,size_t) ;
 int max_alloc_size ;

void *av_fast_realloc(void *ptr, unsigned int *size, size_t min_size)
{
    if (min_size <= *size)
        return ptr;

    if (min_size > max_alloc_size - 32) {
        *size = 0;
        return ((void*)0);
    }

    min_size = FFMIN(max_alloc_size - 32, FFMAX(min_size + min_size / 16 + 32, min_size));

    ptr = av_realloc(ptr, min_size);



    if (!ptr)
        min_size = 0;

    *size = min_size;

    return ptr;
}
