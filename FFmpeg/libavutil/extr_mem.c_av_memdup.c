
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* av_malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

void *av_memdup(const void *p, size_t size)
{
    void *ptr = ((void*)0);
    if (p) {
        ptr = av_malloc(size);
        if (ptr)
            memcpy(ptr, p, size);
    }
    return ptr;
}
