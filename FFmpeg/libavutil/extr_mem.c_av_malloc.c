
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGN ;
 int FF_MEMORY_POISON ;
 void* _aligned_malloc (size_t,size_t) ;
 void* malloc (size_t) ;
 int max_alloc_size ;
 void* memalign (size_t,size_t) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ posix_memalign (void**,size_t,size_t) ;

void *av_malloc(size_t size)
{
    void *ptr = ((void*)0);


    if (size > (max_alloc_size - 32))
        return ((void*)0);
    ptr = malloc(size);

    if(!ptr && !size) {
        size = 1;
        ptr= av_malloc(1);
    }




    return ptr;
}
