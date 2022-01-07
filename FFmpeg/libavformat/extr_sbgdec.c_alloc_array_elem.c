
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 void* av_realloc_f (void*,int,size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void *alloc_array_elem(void **array, size_t elsize,
                              int *size, int *max_size)
{
    void *ret;

    if (*size == *max_size) {
        int m = FFMAX(32, FFMIN(*max_size, INT_MAX / 2) * 2);
        if (*size >= m)
            return ((void*)0);
        *array = av_realloc_f(*array, m, elsize);
        if (!*array)
            return ((void*)0);
        *max_size = m;
    }
    ret = (char *)*array + elsize * *size;
    memset(ret, 0, elsize);
    (*size)++;
    return ret;
}
