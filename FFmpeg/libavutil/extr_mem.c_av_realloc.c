
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN ;
 void* _aligned_realloc (void*,size_t,int ) ;
 int max_alloc_size ;
 void* realloc (void*,size_t) ;

void *av_realloc(void *ptr, size_t size)
{

    if (size > (max_alloc_size - 32))
        return ((void*)0);




    return realloc(ptr, size + !size);

}
