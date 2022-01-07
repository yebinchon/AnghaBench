
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_free (void*) ;
 void* av_realloc (void*,size_t) ;
 scalar_t__ av_size_mult (size_t,size_t,size_t*) ;

void *av_realloc_f(void *ptr, size_t nelem, size_t elsize)
{
    size_t size;
    void *r;

    if (av_size_mult(elsize, nelem, &size)) {
        av_free(ptr);
        return ((void*)0);
    }
    r = av_realloc(ptr, size);
    if (!r)
        av_free(ptr);
    return r;
}
