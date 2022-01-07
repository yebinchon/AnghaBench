
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INT_MAX ;
 void* av_realloc (void*,size_t) ;

void *av_realloc_array(void *ptr, size_t nmemb, size_t size)
{
    if (!size || nmemb >= INT_MAX / size)
        return ((void*)0);
    return av_realloc(ptr, nmemb * size);
}
