
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INT_MAX ;
 void* av_mallocz (size_t) ;

void *av_calloc(size_t nmemb, size_t size)
{
    if (size <= 0 || nmemb >= INT_MAX / size)
        return ((void*)0);
    return av_mallocz(nmemb * size);
}
